import 'package:flutter/material.dart';

ThemeData light({Color color = const Color(0xFFFF5E03)}) => ThemeData(
      primaryColor: Color(0xFFFF5E03),
      secondaryHeaderColor: const Color(0xFF272727),
      disabledColor: Colors.grey[700],
      backgroundColor: Colors.orange.shade50,
      errorColor: const Color(0xFFE84D4F),
      brightness: Brightness.light,
      hintColor: const Color(0xFF9F9F9F),
      cardColor: Colors.white,
      canvasColor: Colors.white,
      colorScheme: ColorScheme.light(
        primary: color,
        secondary: color,
      ),
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: color)),
    );
