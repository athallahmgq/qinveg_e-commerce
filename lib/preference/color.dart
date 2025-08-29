import "package:flutter/material.dart";

class MainColor{
  
  MainColor._();

  static const primaryColor = MaterialColor(0xff61AD4E, {
    50: Color(0xFFE8F5E9),
    100: Color(0xFFCEE6C8),
    200: Color(0xFFB6D9AE),
    300: Color(0xFF95C888),
    400: Color(0xFF81BD71),
    500: Color(0xFF61AD4E),
    600: Color(0xFF589D47),
    700: Color(0xFF457B37),
    800: Color(0xFF355F2B),
    900: Color(0xFF294921),
  });

  static const secondaryColor = MaterialColor(0xffFFAF00, {
    50: Color(0xFFFFF7E6),
    100: Color(0xFFFFE6B0),
    200: Color(0xFFFFDA8A),
    300: Color(0xFFFFC954),
    400: Color(0xFFFFBF33),
    500: Color(0xFFFFAF00),
    600: Color(0xFFE89F00),
    700: Color(0xFFB57C00),
    800: Color(0xFF8C6000),
    900: Color(0xFF6B4A00),
  });

  static const black = MaterialColor(0xff1C2229, {
    50: Color(0xFFE8E9EA),
    100: Color(0xFFB9BABD),
    200: Color(0xFF97999D),
    300: Color(0xFF676B70),
    400: Color(0xFF494E54),
    500: Color(0xFF1C2229),
    600: Color(0xFF191F25),
    700: Color(0xFF14181D),
    800: Color(0xFF0F1317),
    900: Color(0xFF0C0E11),
  });

  static const white = MaterialColor(0xFFFFFFFF, {
    100: Color(0xFFFFFFFF),
    200: Color(0xFFF5F5F7),
  });

  // Semantic Colors

  static const semanticGreen = MaterialColor(0xff38D179, {
    200: Color(0xFFEBFAF2),
    400: Color(0xFFC1F1D5),
    600: Color(0xFF38D179),
    800: Color(0xFF1F7343),
  });

  static const semanticRed = MaterialColor(0xffBC1826, {
    200: Color(0xFFFDECEE),
    400: Color(0xFFFAC4C9),
    600: Color(0xFFEF4250),
    800: Color(0xFF83242C),
  });

  static const semanticYellow = MaterialColor(0xffFFDD28, {
    200: Color(0xFFFFFCEA),
    400: Color(0xFFFFF4BC),
    600: Color(0xFFFFDD28),
    800: Color(0xFF8C7A16),
  });

  static const semanticBlue = MaterialColor(0xff007BFF, {
    200: Color(0xFFE6F2FF),
    400: Color(0xFFB0D6FF),
    600: Color(0xFF007BFF),
    800: Color(0xFF00448C),
  });

}