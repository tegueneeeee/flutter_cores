import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_mode_notifier.g.dart';

@Riverpod(keepAlive: true)
class ThemeModeNotifier extends _$ThemeModeNotifier {
  @override
  ThemeMode build() {
    return _getThemeMode();
  }

  ThemeMode _getThemeMode() {
    final sharedPreferences = ref.watch(sharedPreferencesProvider);
    final themeIndex = sharedPreferences.getInt(
      SharedPreferencesKeys.themeMode.name,
    );
    return ThemeMode.values.singleWhere(
      (themeMode) => themeMode.index == themeIndex,
      orElse: () => ThemeMode.system,
    );
  }

  Future<void> changeThemeMode(ThemeMode themeMode) async {
    await _saveThemeMode(themeMode.index);
    state = themeMode;
  }

  Future<void> _saveThemeMode(int themeModeIndex) async {
    final sharedPreferences = ref.watch(sharedPreferencesProvider);
    await sharedPreferences.setInt(
      SharedPreferencesKeys.themeMode.name,
      themeModeIndex,
    );
  }
}
