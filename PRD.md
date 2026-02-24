# RightNow Tasks Product Requirements Document

## Product Overview

**Product Name:** RightNow Tasks  
**Product Type:** Capacity-first task management and productivity application  
**Mission:** Prevent over-commitment through capacity-aware daily planning, helping users build realistic workloads and sustainable productivity habits through intelligent task curation.

## Target Users

### Primary Users
- **Busy Professionals**: Knowledge workers, entrepreneurs, and managers who need to juggle multiple projects and deadlines
- **Students**: College and graduate students managing coursework, assignments, and personal tasks
- **Productivity Enthusiasts**: Individuals who actively seek tools and methods to optimize their personal organization

### Secondary Users
- **Team Collaborators**: Small teams and groups who need shared task management
- **Habit Builders**: Users focused on developing and maintaining positive habits
- **Family Organizers**: Individuals managing household tasks and family schedules

## Core Value Proposition

RightNow Tasks transforms daily planning from aspirational to realistic through capacity-first thinking. The app prevents over-commitment by enforcing time constraints while providing sophisticated task curation tools including gamified backlog grooming and dynamic execution management that always answers "what should I do right now?"

## Key Features

### Capacity-First Planning Core
- **Daily Capacity Setting**: Set realistic available time with visual capacity management
- **Capacity Enforcement**: Prevent over-commitment by showing when capacity is exceeded
- **Capacity Visualization**: Real-time capacity bar showing committed vs. available time
- **Task Duration Estimates**: Required time estimates for all tasks with learning feedback
- **Overflow Management**: Clear indication of tasks that won't fit in remaining time

### Today (Daily Execution Interface)
- **Current Task Prominence**: "What should I do right now?" - clear next action display
- **Reorderable Task Queue**: Drag-and-drop reordering of today's upcoming tasks
- **Capacity-Aware Ordering**: Visual indication of which tasks fit in remaining time
- **Dynamic Capacity Updates**: Real-time updates as tasks are completed or time passes
- **Task Completion Workflow**: Mark complete, provide actual time feedback, automatic progression

### Backlog Management & Grooming
- **Comprehensive Task Backlog**: All tasks not assigned to today's deck
- **Grooming Games**: Gamified backlog maintenance to keep tasks actionable
  - **Priority Game**: Swipe up/down for High/Low importance decisions
  - **Duration Game**: Swipe left/right for Under/Over time threshold sorting
  - **Clarity Game**: Swipe to identify tasks needing more detail or clarification
- **Task Quality Maintenance**: Systematic approach to keeping backlog clean and actionable
- **Batch Processing**: Efficient grooming sessions for multiple tasks

### Intelligent Task Curation
- **Swipe-to-Today**: Add tasks from backlog to today's task list with immediate capacity feedback
- **Capacity Constraints**: Cannot exceed daily capacity - protective guidance prevents over-commitment
- **Smart Suggestions**: Recommendations for tasks that fit remaining capacity
- **Context-Aware Filtering**: Show relevant tasks based on time, location, or other factors
- **Tomorrow Planning**: Easy migration of incomplete tasks to next day

### Estimation & Learning System
- **Preset Duration Selection**: Quick duration assignment from 15min, 30min, 45min, 1hr presets
- **Automatic Task Splitting**: Easy creation of "Part 2/3/4" for work requiring more than 1 hour
- **Estimation Feedback Loop**: Compare estimated vs. actual time after task completion
- **Pattern Recognition**: Learn personal estimation biases and improve accuracy over time
- **Capacity Learning**: Understand realistic daily capacity based on historical completion data
- **Productivity Insights**: Analytics on planning accuracy and completion patterns

### Cross-Platform Sync
- **Universal Sync**: Real-time synchronization across all devices
- **Offline Access**: Full functionality without internet connection
- **Platform Coverage**: iOS, Android, Windows, macOS, Web, and browser extensions

## Revenue Model & Monetization

### Freemium Strategy
RightNow Tasks operates on a value-first freemium model, providing core functionality free while offering advanced features through premium subscription.

#### Free Tier
- **Core Capacity Planning**: Daily capacity setting and visual capacity management
- **Task Management**: Unlimited task creation, backlog management, and basic grooming games
- **Today Execution**: Full "what should I do right now" interface with task ordering
- **Local Storage**: Complete offline functionality with local data persistence
- **Basic Analytics**: Simple completion tracking and estimation feedback
- **Limited Cloud Sync**: Basic cross-device synchronization with usage limits

#### Premium Tier - £8/month
- **Unlimited Cloud Sync**: Full cross-device synchronization without restrictions
- **Priority Support**: Direct access to customer support with faster response times
- **Advanced Analytics**: Detailed productivity insights, estimation accuracy trends, and capacity optimization recommendations
- **Enhanced Grooming**: Additional grooming games and batch processing tools
- **Calendar Integration**: Smart scheduling and calendar-based task recommendations (future feature)
- **Team Collaboration**: Shared capacity planning and team task visibility (future feature)
- **Data Export**: Full task history and analytics export capabilities

### Monetization Principles
- **Value-First Approach**: Free tier provides genuine value and complete core functionality
- **Premium Enhancement**: Paid features enhance rather than replace free functionality
- **Transparent Pricing**: Clear distinction between free and premium capabilities
- **User Choice**: No forced upgrades - premium features are genuinely optional enhancements
- **Grandfathering Support**: Ability to provide free access to early supporters and beta testers

### Target Conversion
- **Free User Validation**: Users must find genuine value in free tier before considering premium
- **Conversion Trigger**: Premium features address power user needs (multi-device, analytics, collaboration)
- **Sustainable Pricing**: £8/month positioned as reasonable for productivity enhancement
- **Trial Strategy**: Free tier acts as extended trial with clear premium upgrade path

### In-App Purchase Implementation

#### App Store Responsibilities (Automatic)
- **Payment Processing**: Credit card, PayPal, and other payment method handling
- **Subscription Billing**: Automatic recurring monthly charges and renewals
- **Regional Pricing**: Currency conversion and localized pricing tiers
- **Tax Calculations**: Sales tax, VAT, and regional tax compliance
- **Refund Processing**: Customer service and automated refund handling
- **Account Management**: Users can cancel/modify subscriptions through store settings

#### App Implementation Requirements
- **SDK Integration**: Flutter `in_app_purchase` package for Google Play Billing and Apple StoreKit
- **Product Configuration**: Set up subscription products in Google Play Console and App Store Connect
- **Purchase Flow UI**: "Upgrade to Premium" screens, pricing display, and purchase confirmation
- **Feature Gating**: Real-time subscription status checking to enable/disable premium features
- **Purchase Event Handling**: Process successful purchases, failures, cancellations, and edge cases
- **Restore Purchases**: Allow users to restore premium access on new devices or after reinstalls
- **Subscription Status Management**: Continuous validation of active subscription status
- **Error Handling**: Graceful handling of network issues, purchase failures, and subscription changes

#### Technical Integration
- **SubscriptionService**: Core service for managing subscription state and purchase flows
- **PremiumGate Widget**: UI component for protecting premium features with upgrade prompts
- **Firebase Integration**: Store subscription status for multi-device synchronization
- **Offline Handling**: Cache subscription status for offline feature access
- **Testing Infrastructure**: Debug modes and test subscription products for development

## User Experience Requirements

#### Today (Primary Execution Screen)
- **Current Task Display**: Prominent "do this now" section with clear task details
- **Upcoming Task Queue**: Reorderable list of remaining tasks for today
- **Capacity Visualization**: Real-time display of time remaining vs. tasks remaining
- **Overflow Indication**: Clear visual separation of tasks that won't fit in remaining time
- **Quick Actions**: Complete task, reorder queue, adjust estimates

#### Backlog (Task Management & Grooming)
- **Complete Task Library**: All tasks not currently in today's task list
- **Grooming Game Access**: Quick entry to Priority, Duration, and Clarity games
- **Add to Today**: Swipe or tap to move tasks to today's execution queue
- **Task Creation**: Primary location for new task entry and detailed editing
- **Search & Filter**: Find specific tasks or browse by criteria

#### Analytics & Insights
- **Estimation Accuracy**: Track improvement in time estimation over time
- **Completion Patterns**: Understand daily capacity and productivity rhythms
- **Capacity Utilization**: See how well daily planning matches actual completion
- **Grooming Statistics**: Track backlog maintenance and task quality metrics

### Design Principles
- **Ease of Use First**: Minimize configuration screens and complex setup processes
- **Execution Clarity**: Always obvious what to do next and how tasks are prioritized
- **Capacity Awareness**: Constant visibility of time constraints and realistic planning
- **Maintenance Gamification**: Make backlog grooming engaging rather than tedious
- **Learning-Oriented**: Continuous feedback to improve planning skills over time

### Usability Requirements

#### Frictionless Task Creation
- **Search Bar Entry**: Primary task creation through simple text input (similar to TickTick)
- **Minimal Required Fields**: Only task title required for initial creation
- **Smart Defaults**: Automatic assignment of reasonable defaults (30-minute duration, medium priority)
- **Progressive Enhancement**: Additional details available but not required upfront
- **Quick Capture**: Task creation should take less than 5 seconds for basic entries

#### Simplified Duration Management
- **Preset Duration List**: Quick selection from common time blocks
  - 15 minutes
  - 30 minutes  
  - 45 minutes
  - 1 hour
- **Maximum 1-Hour Rule**: No single task can exceed 1 hour duration
- **Automatic Task Splitting**: Easy creation of "Part 2", "Part 3", "Part 4" for longer work
- **One-Tap Duration**: Duration setting should require only one tap/selection
- **Visual Duration Cues**: Clear visual indicators of time commitment without overwhelming interface

#### Configuration Minimization
- **Zero Setup Required**: App should be immediately usable without configuration screens
- **Smart Capacity Detection**: Learn user's typical capacity through usage patterns rather than requiring manual setup
- **Contextual Settings**: Settings accessible when needed, never blocking primary workflows
- **Reasonable Defaults**: Every setting should have a sensible default that works for most users

## Technical Requirements

### Performance
- **Sync Speed**: Changes reflected across devices within 3 seconds
- **App Launch**: App opens and displays data within 2 seconds
- **Search Response**: Search results appear within 1 second
- **Offline Capability**: Full CRUD operations available offline

### Data Management
- **Local Storage**: SQLite database for offline functionality
- **Cloud Sync**: RESTful API with conflict resolution
- **Data Export**: JSON and CSV export options
- **Backup**: Automatic daily backups with manual backup option

### Security & Privacy
- **Data Encryption**: End-to-end encryption for sensitive data
- **Authentication**: Support for email, Google, and Apple sign-in
- **GDPR Compliance**: Full user data control and deletion rights
- **Local-First**: Core functionality works without account creation

## Platform-Specific Features

### Mobile (iOS/Android)
- **Widget Support**: Home screen widgets for quick task viewing
- **Push Notifications**: Smart reminders based on location and time
- **Voice Entry**: Siri/Google Assistant integration for hands-free task creation
- **Camera Integration**: Photo attachment and document scanning

### Desktop (Windows/macOS)
- **Menu Bar/System Tray**: Quick access without opening main app
- **Keyboard Shortcuts**: Power user shortcuts for all major actions
- **Global Quick Add**: System-wide hotkey for instant task creation
- **File Attachments**: Drag and drop files directly onto tasks

### Web Platform
- **Full Feature Parity**: Complete functionality matching native apps
- **Browser Extensions**: One-click task creation from any webpage
- **Progressive Web App**: Offline support and app-like experience
- **Embed Widgets**: Shareable task lists for websites

## Success Metrics

### User Engagement
- **Daily Active Users**: Target 70% of registered users active weekly
- **Task Completion Rate**: Average 65% of created tasks marked complete
- **Session Duration**: Average 5-8 minutes per session
- **Feature Adoption**: 80% of users utilize at least 3 core features

### Business Metrics
- **User Retention**: 85% 7-day retention, 60% 30-day retention
- **Premium Conversion**: 8-12% conversion to paid plans
- **Cross-Platform Usage**: 40% of users active on 2+ platforms
- **Support Tickets**: < 2% of users submit support requests monthly

### Quality Metrics
- **App Store Rating**: Maintain 4.5+ stars across all platforms
- **Crash Rate**: < 0.1% of sessions result in crashes
- **Sync Reliability**: 99.5% successful sync rate
- **Performance**: 95% of actions complete within target time

## Competitive Differentiation

### Key Differentiators
- **Capacity-First Planning**: Start with available time, then choose what fits (vs. aspiration-first planning)
- **Protective Capacity Constraints**: Prevent over-commitment through visual feedback and enforcement
- **Gamified Backlog Grooming**: Transform task maintenance from chore to engaging mini-games
- **Dynamic Execution Interface**: Smart "what's next" with reorderable queue and capacity awareness
- **Estimation Learning System**: Continuous feedback loop to improve time estimation accuracy

### Competitive Advantages
- **Unique Capacity Enforcement**: Only productivity app that actively prevents unrealistic daily planning
- **Friction-Free Task Entry**: Search bar simplicity with sophisticated capacity management underneath
- **Simplified Duration Management**: Preset time blocks with automatic task splitting eliminate duration complexity
- **Zero-Setup Usability**: Immediately productive without configuration screens or complex setup
- **Sophisticated Execution Interface**: Dynamic "what's next" with intelligent task ordering and overflow management
- **Gamified Maintenance**: Transforms tedious backlog grooming into engaging, systematic task curation
- **Learning-Oriented Design**: Continuous estimation feedback creates better planners over time

## Future Strategic Considerations

### Real-World Complexity Integration

As RightNow Tasks matures beyond MVP, several real-world factors will need consideration to provide truly realistic capacity planning:

#### Time-Bound Interruptions
- **Fixed Obligations**: Meetings, appointments, medical schedules that reduce available capacity
- **Recurring Life Tasks**: Daily medicine at specific times, meal breaks, school pickups
- **Commute & Travel**: Transit time between locations and context switching penalties
- **Personal Maintenance**: Breaks, meals, personal care that consume daily capacity
- **Emergency Buffers**: Unexpected interruptions that affect planned work capacity

#### Capacity-Affecting Factors
- **Meeting Fatigue**: Back-to-back meetings reducing available "deep work" capacity
- **Energy Cycles**: Different task types requiring different mental energy levels
- **Context Switching Penalties**: Productivity loss when jumping between different work types
- **Location Constraints**: Home office vs. mobile work affecting task types and efficiency
- **Collaboration Dependencies**: Tasks requiring others' availability impacting scheduling flexibility

#### Task Type Evolution
- **Hard Deadlines** (medicine at 10am) vs. **Flexible Priorities** (creative work)
- **Interruptible Tasks** (email processing) vs. **Flow-State Work** (coding, writing)
- **High-Energy Tasks** (strategic planning) vs. **Low-Energy Tasks** (administrative work)
- **Location-Dependent Tasks** (grocery shopping) vs. **Location-Independent Tasks** (writing)

### Integration Strategy Options

#### Calendar Integration Approach
- **Capacity Reduction**: Automatically reduce available time based on calendar appointments
- **Smart Scheduling**: Suggest optimal times for tasks based on calendar gaps
- **Meeting Buffer**: Auto-add transition time between meetings
- **Energy Awareness**: Schedule high-energy tasks during optimal times

#### Reminder System Consideration
- **Native Reminders**: Build recurring task and reminder functionality into RightNow Tasks
- **External Integration**: Connect with existing reminder/calendar systems (Google Calendar, Apple Reminders)
- **Hybrid Approach**: Handle work tasks natively, integrate with personal reminder systems

#### Companion App Ecosystem
- **RightNow Habits**: Separate app for recurring personal tasks and habits
- **RightNow Calendar**: Calendar app designed around capacity awareness
- **RightNow Teams**: Collaborative capacity planning for small teams
- **Integrated Suite**: All features in unified platform vs. specialized focused apps

### Strategic Decision Framework

#### Integration vs. Focus Trade-offs
- **Benefit**: More realistic capacity planning with comprehensive life integration
- **Risk**: Feature bloat and complexity that undermines core capacity-first value proposition
- **Approach**: Validate core concept thoroughly before expanding scope

#### Technical Architecture Implications  
- **API-First Design**: Build with integration capabilities from the foundation
- **Data Portability**: Ensure user data can connect with external systems
- **Plugin Architecture**: Allow third-party integrations without core complexity
- **Modular Development**: Design features that can be separated into companion apps if needed

### Long-Term Product Evolution

#### Phase 1: Core Validation (Current MVP)
Focus exclusively on capacity-first task planning without external integrations

#### Phase 2: Smart Integration
- Calendar import for capacity reduction
- Basic recurring task support
- Simple reminder notifications

#### Phase 3: Comprehensive Life Planning
- Advanced energy and context awareness
- Multi-app ecosystem or comprehensive platform decision
- Team and collaborative features

#### Phase 4: Intelligence & Automation
- Predictive capacity planning
- AI-powered task scheduling recommendations
- Advanced analytics and optimization

### Decision Criteria for Future Features

Each potential expansion should be evaluated against:
- **Core Value Alignment**: Does it strengthen capacity-first planning?
- **Complexity Cost**: Does it compromise the simple, focused user experience?
- **User Validation**: Do validated users actually need this functionality?
- **Technical Debt**: Can it be implemented without architectural compromises?
- **Competitive Advantage**: Does it differentiate from generic productivity apps?

*Note: These considerations inform long-term strategy but are explicitly excluded from MVP development to maintain focus on core capacity-first planning validation.*