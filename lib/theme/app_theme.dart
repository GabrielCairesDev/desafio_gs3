import 'package:desafio_gs3/utils/colors_app.dart';
import 'package:flutter/material.dart';

ThemeData appTheme() {
  final baseTheme = ThemeData(
    fontFamily: 'Mulish',
    primaryColor: ColorsApp.cor_01,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
  return baseTheme;
}
