import 'package:flutter/material.dart';

class AppTheme {
  // Color primario para la aplicación
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      // Color primario para la aplicación
      //primaryColor: Colors.deepOrange,
      // AppBar Theme
      appBarTheme: const AppBarTheme(
          color: primary,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 24)),
      listTileTheme: const ListTileThemeData(iconColor: primary));
}
