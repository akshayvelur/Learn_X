📘 Flutter Learning App – Internship Task for Unplugged
🔧 Overview
This is a Flutter-based interactive learning app created for the Unplugged Internship selection task. The app demonstrates modern Flutter development principles including Clean Architecture, BLoC state management, dynamic theming, reusable UI components, and Google Sign-In integration via Firebase.

🎯 Features
✅ Splash Screen

✅ Google Sign-In (via Firebase Authentication)

✅ "Match the Following" Learning Interaction

✅ Completion Summary Screen

✅ Theme Switching (Light/Dark)

✅ Reusable UI Component Library (Buttons, Cards, Inputs)

✅ Clean and Scalable Architecture with BLoC

✅ Mobile-responsive design using MediaQuery

📐 Architecture Used
This Flutter application follows the Clean Architecture pattern, which promotes clear separation of concerns, modularity, and testability. It also uses BLoC (flutter_bloc) for reactive state management.

🗂️ Folder Structure
bash
Copy
Edit
lib/
├── core/                     # Common shared utilities
│   ├── theme/                # Light/Dark theme data
│   └── utils/                # MediaQuery, icons, constants
│
├── domain/                   # Business logic layer
│   └── authentication/       # Auth-related models and logic
│
├── presentation/             # UI layer
│   ├── finish/               # Finish/completion screen
│   ├── learning/             # Interactive screen
│   ├── login/                # Google login screen
│   ├── splash/               # Splash screen
│   └── widget/               # Reusable custom widgets
│
├── main.dart                 # App entry point
⚙️ State Management
Built using the BLoC pattern with flutter_bloc.

Clean handling of UI states and business logic separation.

🎨 Theming
Fully supports theme switching (light & dark).

All widgets in the app auto-adjust based on the selected theme.

Theme configurations are centralized in the core/theme/ folder.

🔐 Authentication
Integrated Google Sign-In using Firebase Authentication.

Sign-in state handled using BLoC for smooth UI transitions.

🧱 Reusability
All UI elements such as:

Custom Buttons

Styled Text Fields

Cards

...are built using a centralized custom UI library and are theme-aware for consistency and adaptability.

📝 Notes
Data used in the app is mocked and static (no backend required).

The app is responsive and works across different screen sizes.