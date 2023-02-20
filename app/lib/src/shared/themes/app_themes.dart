import 'package:flutter/material.dart';

part 'color_schemes.g.dart';

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: _lightColorScheme,
  appBarTheme: const AppBarTheme(
    centerTitle: true,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: _lightColorScheme.primary,
    foregroundColor: _lightColorScheme.onPrimary,
  ),
);

final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: _darkColorScheme,
  appBarTheme: const AppBarTheme(
    centerTitle: true,
  ),
);
