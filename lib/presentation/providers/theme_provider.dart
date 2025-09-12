import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// =============================
// 📊 Riverpod v2 (legacy usage)
// =============================
// Riverpod V2 providers:
// - `Provider`: Immutable values.
// - `StateProvider`: Simple states.
// - `StateNotifierProvider`: Complex states with structured logic.

// 1️⃣ Provider:
//    - For immutable or computed values.
//    - Useful for services, repositories, or stateless logic.
// final colorListProvider = Provider((ref) => colorList);

// 2️⃣ StateProvider:
//    - For simple and mutable states.
//    - Ideal for counters, booleans, or basic states.
// final isDarkmodeProvider = StateProvider<bool>((ref) => false);
// final selectedColorProvider = StateProvider<int>((ref) => 0);

// 3️⃣ StateNotifierProvider:
//    - For managing complex states with structured logic.
//    - Ideal for lists, authentication, or data models.
// An object of type AppTheme (custom)
// final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
//   (ref) => ThemeNotifier(),
// );

// Controller or Notifier
// class ThemeNotifier extends StateNotifier<AppTheme> {
//   // STATE = State = new AppTheme();
//   ThemeNotifier() : super(AppTheme());

//   void toggleDarkmode() {
//     state = state.copyWith(isDarkmode: !state.isDarkmode);
//   }

//   void changeColorIndex(int colorIndex) {
//     state = state.copyWith(selectedColor: colorIndex);
//   }
// }

// 🚀 Choice (v2):
// ✅ Use `Provider` for static or computed values.
// ✅ Use `StateProvider` for small and mutable states.
// ✅ Use `StateNotifierProvider` for states with advanced logic.

// =====================================================
// 🚀 Riverpod v3: Everything migrates to Notifier and NotifierProvider
// =====================================================
// In Riverpod v3, migration is as simple as using Notifier and NotifierProvider for all state management.

// 1️⃣ Provider (v3):
final colorListProvider = Provider((ref) => colorList);

// 2️⃣ NotifierProvider for simple states:
class IsDarkmodeNotifier extends Notifier<bool> {
  @override
  bool build() => false;

  void toggle() => state = !state;
}

final isDarkmodeProvider = NotifierProvider<IsDarkmodeNotifier, bool>(
  IsDarkmodeNotifier.new,
);

class SelectedColorNotifier extends Notifier<int> {
  @override
  int build() => 0;

  void setColor(int colorIndex) => state = colorIndex;
}

final selectedColorProvider = NotifierProvider<SelectedColorNotifier, int>(
  SelectedColorNotifier.new,
);

// 3️⃣ NotifierProvider for complex states:
final themeNotifierProvider = NotifierProvider<ThemeNotifier, AppTheme>(
  ThemeNotifier.new,
);

class ThemeNotifier extends Notifier<AppTheme> {
  // STATE = State = new AppTheme();
  @override
  AppTheme build() => AppTheme();

  void toggleDarkmode() {
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
