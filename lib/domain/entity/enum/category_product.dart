import 'package:online_cosmetics_store/assets/res/app_strings.dart';

enum ProductCategory {
  sets(AppStrings.sets),
  face(AppStrings.face),
  eyes(AppStrings.eyes),
  body(AppStrings.body),
  arm(AppStrings.arm);

  // Поле для хранения перевода
  final String name;

  // Конструктор
  const ProductCategory(this.name);
}