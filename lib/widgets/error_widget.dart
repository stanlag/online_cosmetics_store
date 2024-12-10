import 'package:flutter/material.dart';
import 'package:online_cosmetics_store/assets/res/app_strings.dart';

/// Отображение ошибки
class ErrorMyWidget extends StatelessWidget {
  const ErrorMyWidget();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(AppStrings.error),
    );
  }
}
