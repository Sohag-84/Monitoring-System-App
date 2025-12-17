# 📊 Monitoring System App

A **production-ready Flutter application** built using **BLoC (Cubit)** for state management and **GoRouter** for declarative navigation.  
The project follows **clean, scalable, and maintainable architecture principles**, suitable for real-world monitoring and dashboard-based applications.

---

## 🚀 Tech Stack

- **Flutter**: `3.38.3` (managed via **FVM**)
- **State Management**: `flutter_bloc` (Cubit)
- **Navigation**: `go_router`
- **Architecture**: Feature-based (Presentation / Logic / Data)
- **Dependency Management**: FVM

---

## 📁 Project Structure
```text
lib/
├── core/
│   ├── constants/
│   │   ├── app_assets.dart
│   │   └── app_strings.dart
│   ├── theme/
│   │   ├── app_colors.dart
│   │   └── app_theme.dart
│   ├── router/
│   │   ├── app_pages.dart
│   │   └── app_router.dart
│   └── widgets/
│       └── common_widgets.dart
│
├── features/
│   ├── auth/
│   │   ├── presentation/
│   │   │   ├── view/
│   │   │   └── widgets/
│   │   └── cubit/
│   │       └── auth_cubit.dart
│   │
│   ├── dashboard/
│   │   ├── presentation/
│   │   │   ├── view/
│   │   │   └── widgets/
│   │   └── cubit/
│   │      └── dashboard_cubit.dart
└── main.dart

```


---

## 🧠 Architecture Overview

- Feature-based modular structure for scalability
- BLoC (Cubit) manages business logic and UI state
- Strict separation of concerns between UI and logic
- GoRouter handles routing, nested navigation, and flow control
- Centralized theme configuration
- Reusable widgets to reduce duplication

---

## 🧭 Navigation

The app uses **GoRouter** for declarative and scalable navigation.

```dart
final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const DashboardView(),
    ),
  ],
);
```


## 🚀 Getting Started
## Prerequisites

Before you begin, ensure you have the following installed on your system:

- [Flutter](https://flutter.dev/docs/get-started/install) (>= 3.8.1)
- [Dart SDK](https://dart.dev/get-dart) (comes with Flutter)
- [Android Studio](https://developer.android.com/studio) or [VS Code](https://code.visualstudio.com/) with Flutter and Dart plugins
- [Git](https://git-scm.com/) for version control

### Additional Setup

- An emulator or physical device to run the app.
- Internet connection for fetching dependencies.
- Basic knowledge of Flutter and Dart is recommended.

### Clone & Install
```bash
git@github.com:Sohag-84/Monitoring-System-App.git
cd Monitoring-System-App
flutter pub get
```
