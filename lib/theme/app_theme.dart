import 'package:flutter/material.dart';

ThemeData appTheme() {
  final baseTheme = ThemeData(
    fontFamily: 'Mulish',
    primaryColor: const Color(0xFFFFFFFF),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
  return baseTheme;
}
