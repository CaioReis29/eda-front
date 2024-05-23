
import 'package:eda_front/app/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent, primary: ThemeColors.red, brightness: Brightness.light),
        useMaterial3: true,
      );
}