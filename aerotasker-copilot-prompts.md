# AeroTasker GitHub Copilot Prompts

This document contains concise, effective prompts that you can use with GitHub Copilot to implement the AeroTasker app with its unique "Deck" concept.

## Core Models

### Task Model

```
// Create a Task model for AeroTasker with the following fields:
// - id: String
// - title: String
// - description: String
// - dueDate: DateTime (nullable)
// - priority: String (high, medium, low, none)
// - isComplete: bool
// - tags: List<String>
// - createdAt & updatedAt: DateTime
// - estimatedDuration: int (minutes)
// - actualDuration: int (nullable, minutes)
// - inDeck: bool (whether task is in today's deck)
// - deckOrder: int (nullable, for ordering in the deck)
// Include Firestore serialization and an isOverdue getter
```

### Tag Model

```
// Create a Tag model with fields for id, name, color, createdAt, and userId
// Include Firestore serialization methods
```

## BLoC Implementation

### Deck BLoC

```
// Implement a DeckBloc using flutter_bloc package with:
// Events: LoadDeck, AddTaskToDeck, RemoveTaskFromDeck, ReorderDeckTask, MarkTaskComplete, StartFocusSession
// States: DeckInitial, DeckLoading, DeckLoaded, DeckError
// The state should track current deck tasks, capacity usage (sum of estimated durations), and the focused task
```

### Task BLoC

```
// Implement a TaskBloc for managing tasks with:
// Events: LoadTasks, CreateTask, UpdateTask, DeleteTask, FilterTasks
// States: TasksInitial, TasksLoading, TasksLoaded (with tasks list and filters), TasksError
// Include logic for applying multiple filters simultaneously (due date, priority, tags)
```

## Key Screens (Based on Wireframes)

### Today's Deck Screen

```
// Create the Today's Deck screen that:
// 1. Shows a capacity indicator at the top (8-hour default)
// 2. Displays a "Now Playing" section for the current focus task
// 3. Lists remaining tasks for the day below
// 4. Shows an empty state with "Stack Your Deck" button when empty
// 5. Displays visual progress through the day's tasks
// 6. Includes complete/start timer actions for the focus task
// Use MaterialApp with Scaffold and ListView for the main structure
```

### Smart Deck Screen

```
// Create a Smart Deck screen with:
// 1. Capacity indicator at the top
// 2. Search bar and filter pills (All Tasks, Overdue, Due Today, High Priority, Suggested)
// 3. Toggle between List and Card views:
//    - List view: Shows filterable tasks with add buttons
//    - Card view: Shows one task at a time with skip/add actions
// 4. Selected tasks preview at the bottom
// 5. Bottom navigation bar with Smart Deck tab highlighted
// Implement tab switching with PageView or IndexedStack to maintain state
```

### Backlog Grooming Screen

```
// Create a Backlog Grooming screen with:
// 1. Header showing game title, instruction, and tasks groomed counter
// 2. Task card in the center with task details
// 3. Two action buttons specific to the current game (e.g., High/Low Priority)
// 4. Pagination indicator at the bottom showing progress through tasks
// 5. Game switching button in the header
// Make the card swipeable in both directions to match button actions
```

### Task Creation Screens

```
// Create a Quick Add Task screen with:
// 1. Text input at the top with add button
// 2. Quick action chips when text is entered (add to deck, set due date, etc.)
// 3. Recently added tasks section
// 4. Task suggestions based on patterns
// 5. "Add Detailed Task" button at the bottom
```

```
// Create a Detailed Task Form screen with:
// 1. Required field for title
// 2. Optional description field
// 3. Duration selector with 4 preset options (5, 15, 30, 60 min)
// 4. Priority selector with 4 options (high, medium, low, none)
// 5. Due date picker with calendar
// 6. Tag selector with toggleable chips
// 7. Option to add to today's deck
// 8. Save button in the header
```

## UI Components

### Capacity Indicator

```
// Create a capacity indicator widget that:
// 1. Shows a progress bar (blue for normal, yellow for warning, red for over capacity)
// 2. Displays text showing hours/minutes used vs. total
// 3. Shows warning message when approaching or exceeding capacity
// Make it responsive to fit different screen sizes
```

### Task Card

```
// Create a versatile task card widget that:
// 1. Shows title, estimated duration, priority, and due date
// 2. Displays tags as horizontal chips
// 3. Highlights overdue tasks with warning icon
// 4. Supports optional add/complete action buttons
// Make it work both in list views and as standalone cards
```

### Focus Task Card

```
// Create a special "Now Playing" card for the current focus task with:
// 1. Prominent task title and details
// 2. Complete and Start Timer action buttons
// 3. Visual distinction from regular task cards (border, background, etc.)
// Make the design match the wireframe's emphasis on the current task
```

### Bottom Navigation

```
// Create a custom bottom navigation bar with:
// 1. Four tabs: Today's Deck, Smart Deck, Grooming, Stats
// 2. Active tab highlighted with primary color
// 3. Icons and labels for each tab
// 4. Smooth transitions between tabs
// Include tab persistence to maintain screen state when switching
```

## Firebase Integration

```
// Create a TaskRepository that:
// 1. Handles CRUD operations with Cloud Firestore
// 2. Provides real-time listening for task updates
// 3. Includes methods for deck-specific operations (addToDeck, removeFromDeck)
// 4. Handles offline caching and synchronization
// 5. Supports filtering by various criteria
```

## Theme and Styling

```
// Create a theme.dart file with:
// 1. Primary color palette based on blue (#2196F3)
// 2. Secondary colors for priorities (red, orange, green)
// 3. Text styles for various components
// 4. Card and container decorations
// 5. Button styles for primary and secondary actions
// Use MaterialColor to define full color palettes
```

## Navigation Setup

```
// Create a bottom navigation setup with:
// 1. Four tabs: Today's Deck, Smart Deck, Grooming, Stats
// 2. Persistent navigation that maintains screen state
// 3. Custom icons and labels for each tab
// 4. Visual indicators for active tab
// Use IndexedStack to preserve screen state across navigation
```

---

## Wireframe Descriptions

Use these descriptions along with the visual wireframes we've already created to guide Copilot in implementing each screen.

### Today's Deck Screen

A screen showing the user's selected tasks for the day. It has:
- A capacity indicator at the top showing used vs. total time (8 hours default)
- A highlighted "Now Playing" section for the current focus task
- A list of upcoming tasks below
- An empty state when no tasks are in the deck with a "Stack Your Deck" button
- Bottom navigation with Today's Deck tab highlighted

### Smart Deck Screen

A combined screen for browsing and selecting tasks for the day. It includes:
- Capacity indicator at the top
- Search bar and filter pills for finding relevant tasks
- Toggle between list view (showing multiple tasks) and card view (one task at a time)
- In list view: scrollable list of tasks with add buttons
- In card view: swipeable cards with skip/add actions
- Selected tasks preview at the bottom
- Bottom navigation with Smart Deck tab highlighted

### Backlog Grooming Screen

A gamified interface for maintaining the task backlog, featuring:
- Header with game title, instruction, and tasks groomed counter
- Large card showing one task at a time
- Two prominent buttons for binary choices specific to the current game
- Game types: Priority (High/Low), Duration (Under/Over 30 min), Clarity (Clear/Needs Clarification)
- Pagination indicator showing progress through tasks
- Bottom navigation with Grooming tab highlighted

### Quick Add Task Screen

A screen for rapidly adding tasks to the backlog:
- Text input at the top with add button
- Quick action chips appearing when text is entered
- Recently added tasks shown below
- Suggested tasks based on patterns
- "Add Detailed Task" button at the bottom

### Detailed Task Form

A comprehensive form for creating or editing tasks:
- Required title field
- Optional description field
- Duration selection with preset options (5, 15, 30, 60 min)
- Priority selection (high, medium, low, none)
- Due date picker
- Tag selection with toggleable chips
- Additional options (add to deck, set reminder)
- Save button in header
