# S.Rocks Music App (Home Page Module)

This Flutter project is the **Home Page UI** module for the S.Rocks Music App. It follows a scalable architecture using **MVVM**, **Provider for state management**, **Firebase Firestore** for dynamic data, and **Dependency Injection** for service access.

---

## 📁 Folder Structure Overview

```
lib/
├── core/
│   ├── assets/                  # Image and Vector path constants
│   ├── di/                      # Service locator for dependency injection (GetIt)
│   └── services/                # Firestore service integration
│
├── data/models/home/           # Service data model
│
├── view/screens/
│   ├── home/
│   │   ├── viewmodels/         # Service view model (state + logic)
│   │   ├── widgets/            # All UI widgets for home screen
│   │   ├── home_screen.dart    # Root screen (entry for homepage)
│   │   └── home_view_model.dart# Future scalable logic container
│   │
│   └── splash/
│       └── splash_screen.dart  # Animated splash screen logic
│
├── firebase_options.dart       # Firebase config (auto-generated)
└── main.dart                   # App entry point with providers
```

---

## 🛠️ Features Implemented

- Firebase Firestore integration (via `FirestoreService`)
- MVVM architecture with Provider state management
- Custom splash screen using `AnimatedSplashScreen`
- Modular widget structure for clean and scalable UI
- Dependency Injection using `GetIt`

---

## 🧠 Approach

- On startup, the app shows a custom splash screen.
- The home screen includes components like `HeroSection`, `SearchBar`, and `ServiceSection`.
- The `ServiceSection` fetches real-time service cards (title, description, icon, background) from Firestore using the `ServiceViewModel`.
- All business logic is separated from UI for testability and clean architecture.

---

## 📋 Project Planning & Task Tracking

- Development of this application was structured and tracked using an **Agile Workflow (JIRA)** to ensure clarity across all phases — from designing to feature implementation.
- Tasks, bugs, and enhancements were managed on a dedicated **Project Board**, helping maintain consistent progress and better **sprint planning**.

🔗 [View the project board](https://hsdot.atlassian.net/jira/software/projects/MSM/boards/67)

---

## ➡️ Coming Next

- Routing for each bottom navigation item (`News`, `TrackBox`, `Projects`)
- Enhanced state handling for more screens
- Firestore document updates and real-time changes

---

## 🔥 Firebase Setup

Make sure you've:

1. Set up Firebase in your project.
2. Configured Firestore security rules.
3. Populated your Firestore `services` collection with valid data.

---

> This README will grow as more features are added to the app.
