import 'package:flutter/material.dart';

class AppTheme {
  // Color primario para la aplicación
  static const Color primary = Colors.deepOrange;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      // Color primario para la aplicación
      //primaryColor: Colors.deepOrange,
      // AppBar Theme
      appBarTheme: const AppBarTheme(color: primary),
      listTileTheme: const ListTileThemeData(iconColor: primary));
}
