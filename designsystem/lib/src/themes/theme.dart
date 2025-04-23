import 'package:flutter/material.dart';

import '../typography/app_typography.dart';
import 'app_bar_theme.dart';
import 'bottom_navigation_bar_theme.dart';
import 'color_schemes.dart';

/// Create a light theme.
ThemeData lightTheme({ColorScheme? colorScheme}) => _createTheme(
  colorScheme: colorScheme ?? lightColorScheme,
  appBarTheme: lightAppBarTheme,
  bottomNavigationBarTheme: lightBottomNavigationBarTheme,
  textTheme: AppTypography.textTheme,
);

/// Create a dark theme.
ThemeData darkTheme({ColorScheme? colorScheme}) => _createTheme(
  colorScheme: colorScheme ?? darkColorScheme,
  appBarTheme: darkAppBarTheme,
  bottomNavigationBarTheme: darkBottomNavigationBarTheme,
  textTheme: AppTypography.textTheme,
);

ThemeData _createTheme({
  required ColorScheme colorScheme,
  required AppBarTheme appBarTheme,
  required BottomNavigationBarThemeData bottomNavigationBarTheme,
  required TextTheme textTheme,
}) => ThemeData(
  colorScheme: colorScheme,
  appBarTheme: appBarTheme,
  bottomNavigationBarTheme: bottomNavigationBarTheme,
  textTheme: textTheme,
  useMaterial3: true,
);
