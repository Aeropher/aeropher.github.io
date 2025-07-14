---
layout: post
title: "The Technical Journey: Building an Offline-First Flutter App with Hive and Firebase"
date: 2025-01-28
categories: [development, rightnow, flutter]
tags: [flutter, firebase, hive, offline-first, mobile-development]
image: assets/images/offline-first.jpg
featured: true
---

When we set out to build RightNow Tasks, one requirement was non-negotiable: it had to work flawlessly offline. Task management is most critical when you're on a plane, in a subway tunnel, or simply wanting to disconnect. Here's how we built a truly offline-first Flutter app that syncs seamlessly when connected.

## The Architecture Decision

We evaluated several options for offline storage:
- **SQLite**: Powerful but overkill for our needs
- **SharedPreferences**: Too limited for complex data
- **Hive**: Fast, lightweight, and Flutter-native ✅

Combined with Firebase for cloud sync, this gave us the best of both worlds: blazing-fast local performance with reliable cloud backup.

## Setting Up Hive for Complex Data

First, we defined our data models with Hive annotations:

```dart
import 'package:hive/hive.dart';

part 'task.g.dart';

@HiveType(typeId: 0)
class Task extends HiveObject {
  @HiveField(0)
  String id;
  
  @HiveField(1)
  String title;
  
  @HiveField(2)
  int duration; // in minutes
  
  @HiveField(3)
  double priority;
  
  @HiveField(4)
  DateTime? completedAt;
  
  @HiveField(5)
  List<String> tagIds;
  
  @HiveField(6)
  DateTime createdAt;
  
  @HiveField(7)
  DateTime modifiedAt;
  
  // Version 2 additions
  @HiveField(8)
  String? description;
  
  @HiveField(9)
  bool isFuzzy;
}
```

The `@HiveField` numbers are crucial—they must never change once deployed, or you'll corrupt existing user data.

## The Sync Engine

The heart of our offline-first approach is a robust sync engine that handles the complex dance between local and remote data:

```dart
class SyncEngine {
  final HiveDatabase _local;
  final FirebaseFirestore _remote;
  final ConnectivityService _connectivity;
  
  StreamSubscription? _connectivitySub;
  Queue<SyncOperation> _pendingOps = Queue();
  
  void initialize() {
    _connectivitySub = _connectivity.onConnectivityChanged.listen((connected) {
      if (connected) {
        _processPendingOperations();
      }
    });
  }
  
  Future<void> saveTask(Task task) async {
    // Always save locally first
    await _local.saveTask(task);
    
    // Queue for remote sync
    _pendingOps.add(SyncOperation(
      type: OperationType.upsert,
      entity: task,
      timestamp: DateTime.now(),
    ));
    
    // Try to sync immediately if online
    if (_connectivity.isConnected) {
      await _processPendingOperations();
    }
  }
}
```

## Handling Conflicts

The trickiest part of offline-first is conflict resolution. What happens when the same task is modified on two devices while offline?

We implemented a "last-write-wins" strategy with client timestamps:

```dart
Future<Task> resolveConflict(Task local, Task remote) async {
  // If remote is newer, update local
  if (remote.modifiedAt.isAfter(local.modifiedAt)) {
    await _local.saveTask(remote);
    return remote;
  }
  
  // If local is newer, push to remote
  if (local.modifiedAt.isAfter(remote.modifiedAt)) {
    await _remote.updateTask(local);
    return local;
  }
  
  // If timestamps match, prefer remote (server as source of truth)
  await _local.saveTask(remote);
  return remote;
}
```

## Performance Optimizations

### 1. Lazy Loading
We don't load all tasks at once. Instead, we use pagination with Hive's efficient key-based access:

```dart
Future<List<Task>> getTasksForDay(DateTime day, {int limit = 50}) async {
  final box = await Hive.openBox<Task>('tasks');
  final dayKey = DateFormat('yyyy-MM-dd').format(day);
  
  return box.values
    .where((task) => task.scheduledDate == dayKey)
    .take(limit)
    .toList();
}
```

### 2. Batch Operations
When syncing, we batch operations to minimize Firebase calls:

```dart
Future<void> batchSync(List<SyncOperation> operations) async {
  final batch = _remote.batch();
  
  for (final op in operations) {
    switch (op.type) {
      case OperationType.upsert:
        batch.set(
          _remote.collection('tasks').doc(op.entity.id),
          op.entity.toJson(),
          SetOptions(merge: true),
        );
        break;
      case OperationType.delete:
        batch.delete(_remote.collection('tasks').doc(op.entityId));
        break;
    }
  }
  
  await batch.commit();
}
```

### 3. Smart Caching
We implemented a three-tier caching strategy:
1. **Memory Cache**: Recently accessed tasks (LRU with 100 item limit)
2. **Hive Cache**: All local data
3. **Firebase**: Cloud backup and sync

## Handling Schema Migrations

As the app evolved, we needed to add fields without breaking existing installs:

```dart
class MigrationService {
  static const CURRENT_VERSION = 2;
  
  Future<void> migrate() async {
    final prefs = await SharedPreferences.getInstance();
    final currentVersion = prefs.getInt('schema_version') ?? 1;
    
    if (currentVersion < CURRENT_VERSION) {
      await _migrateToV2();
      await prefs.setInt('schema_version', CURRENT_VERSION);
    }
  }
  
  Future<void> _migrateToV2() async {
    final box = await Hive.openBox<Task>('tasks');
    
    // Add default values for new fields
    for (final task in box.values) {
      task.description ??= '';
      task.isFuzzy ??= false;
      await task.save();
    }
  }
}
```

## Lessons Learned

### 1. Design for Offline from Day One
Retrofitting offline support is painful. Every feature should consider "what if there's no internet?"

### 2. Test Sync Edge Cases Extensively
We built a test harness that simulates:
- Rapid online/offline switching
- Clock skew between devices
- Large batch syncs after extended offline periods
- Concurrent edits on multiple devices

### 3. Make Sync Status Visible
Users need to know when they're offline and when their data is syncing:

```dart
class SyncStatusWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<SyncStatus>(
      stream: syncEngine.statusStream,
      builder: (context, snapshot) {
        final status = snapshot.data ?? SyncStatus.unknown;
        
        return AnimatedContainer(
          duration: Duration(milliseconds: 300),
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: _getStatusColor(status),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _getStatusIcon(status),
              SizedBox(width: 6),
              Text(_getStatusText(status)),
            ],
          ),
        );
      },
    );
  }
}
```

## The Result

Our offline-first architecture delivers:
- **Instant UI responses**: No waiting for network calls
- **100% offline functionality**: Full app features without internet
- **Automatic background sync**: Changes sync when connection returns
- **Conflict resolution**: Smart handling of concurrent edits
- **Data integrity**: Local and remote data stay consistent

## Try It Yourself

The complete sync engine is part of RightNow Tasks. While the app itself is closed-source, we've open-sourced a simplified version of our offline-sync pattern on [GitHub](https://github.com/example/flutter-offline-sync-pattern) for the Flutter community.

Building offline-first is more work upfront, but the result is an app that users can truly depend on—whether they're online, offline, or somewhere in between.