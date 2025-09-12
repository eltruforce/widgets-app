
# Widgets App

This project is a comprehensive Flutter application that showcases a wide variety of Flutter widgets and UI patterns. It is designed as a learning and experimentation platform for developers who want to explore Flutter's capabilities, navigation, theming, and state management using Riverpod.

## Features

- **Widget Demos:** Explore multiple screens demonstrating different Flutter widgets, including buttons, cards, progress indicators, snackbars, animations, infinite scroll, and more.
- **Navigation:** Uses `go_router` for modern, declarative navigation between screens.
- **Theming:** Dynamic theme switching (light/dark mode) and color customization using a custom `AppTheme` class.
- **State Management:** Implements state management using Riverpod, with a focus on the transition from Riverpod v2 to v3.

## Riverpod: Providers and Notifiers (v2 vs v3)

This project demonstrates both legacy and modern approaches to state management with Riverpod:

### Riverpod v2 (Legacy)
- **Provider:** For immutable or computed values.
- **StateProvider:** For simple, mutable states (e.g., booleans, counters).
- **StateNotifierProvider:** For complex states with structured logic (e.g., theming, authentication).

### Riverpod v3 (Recommended)
- **Notifier & NotifierProvider:** Riverpod v3 unifies state management by encouraging the use of `Notifier` and `NotifierProvider` for all stateful logic, whether simple or complex. This approach simplifies code and improves maintainability.

#### Example: Theme Management
- The app uses a `ThemeNotifier` (extending `Notifier<AppTheme>`) to manage theme state, including dark mode and color selection.
- Simple states like `isDarkmode` and `selectedColor` are also managed with custom notifiers, demonstrating the flexibility of the v3 approach.

## Project Structure

- `lib/config/` — App configuration (routing, theming)
- `lib/presentation/` — UI screens, widgets, and providers
- `assets/images/` — Image assets for demos

## Compatibility Recommendation

If you encounter compatibility issues with Flutter or its dependencies, it is highly recommended to use **FVM (Flutter Version Management)** to manage and switch between different Flutter SDK versions easily.

---
**Author:** Based on the course by Fernando Herrera (Devtalles)
