import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color.fromRGBO(1,107,88,1);
  // Add more custom colors here as needed
}

final ThemeData theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    primary: AppColors.primaryColor,
    // secondary: AppColors.secondaryColor,
    // background: AppColors.backgroundColor,
    seedColor: Colors.purple,
    brightness: Brightness.light,
  ),
);
