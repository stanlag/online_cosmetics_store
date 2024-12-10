import 'package:online_cosmetics_store/assets/res/app_strings.dart';

enum SkinType {
  oily(AppStrings.oily),
  combination(AppStrings.combination),
  normal(AppStrings.normal),
  dry(AppStrings.dry),
  any(AppStrings.any);

  final String name;

  const SkinType(this.name);
}
