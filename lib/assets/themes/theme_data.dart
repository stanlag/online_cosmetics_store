import 'package:flutter/material.dart';
import '../colors/app_colors.dart';
import '../text/text_style.dart';

abstract class AppThemeData {
  static final ThemeData lightTheme =
      ThemeData.light(useMaterial3: false).copyWith(
          scaffoldBackgroundColor: AppColors.white,
          textTheme: AppTextTheme.appTextTheme,
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: ButtonStyle(
              fixedSize: const WidgetStatePropertyAll(Size.fromHeight(70)),
              backgroundColor: const WidgetStatePropertyAll(AppColors.white),
              foregroundColor: const WidgetStatePropertyAll(AppColors.black),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10.0), // Закругленные углы
                ),
              ),
              side: const WidgetStatePropertyAll(
                BorderSide(color: AppColors.lightGrey), // Граница кнопки
              ),
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(AppColors.black),
            ),
          ),
      textButtonTheme: const TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(AppColors.white),
          foregroundColor: WidgetStatePropertyAll(AppColors.black),
          textStyle: WidgetStatePropertyAll( TextStyle(
            color: AppColors.black,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          )),
        )

      )
      );
}
