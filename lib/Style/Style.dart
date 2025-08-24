import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

TextStyle mystyle({required Color? color,required FontWeight? fontWeight, required double? fontSize}) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight ?? FontWeight.normal,
    color: color ?? Colors.black,
  );
}

Color balck = Colors.black;
FontWeight bold = FontWeight.bold;

// import 'package:flutter/material.dart';

class AppTheme {
  // Define your color palette
  static const Color primaryColor = Color(0xFF4CAF50); // Fresh Green
  static const Color secondaryColor = Color(0xFF2196F3); // Calm Blue
  static const Color accentColor = Color(0xFFFF9800); // Orange
  static const Color backgroundColor = Color(0xFFF5F7FA); // Light gray
  static const Color textDark = Color(0xFF212121); // Almost black
  static const Color textLight = Color(0xFF757575); // Muted gray

  // Create ThemeData
  static final ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: backgroundColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: accentColor,
      foregroundColor: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
      elevation: 2,
      centerTitle: true,
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: textDark),
      headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: textDark),
      bodyLarge: TextStyle(fontSize: 13, color: textDark),
      bodyMedium: TextStyle(fontSize: 14, color: textLight),
      // labelLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: accentColor),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    cardTheme: CardThemeData(
      color: Colors.white,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
    ), colorScheme: ColorScheme.light(
      primary: primaryColor,
      secondary: secondaryColor,
      surface: backgroundColor,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
    ).copyWith(background: backgroundColor),
  );
}
