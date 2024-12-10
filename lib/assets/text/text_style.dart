import 'package:flutter/material.dart';

import '../colors/app_colors.dart';

/// App text style.
abstract class AppTextTheme {
  static const TextTheme appTextTheme = TextTheme(
    titleLarge: TextStyle(
      fontFamily: 'Sora',
      fontSize: 25,
      fontWeight: FontWeight.w400,
      color: AppColors.black,
    ),
    titleMedium: TextStyle(
      fontFamily: 'Sora',
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: AppColors.black,
    ),
    titleSmall: TextStyle(
      fontFamily: 'Sora',
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: AppColors.black,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Sora',
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.black,
    ),
    bodySmall: TextStyle(
      fontFamily: 'Sora',
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
  );
}
