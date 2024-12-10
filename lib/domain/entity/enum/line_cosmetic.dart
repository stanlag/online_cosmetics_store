import 'package:online_cosmetics_store/assets/res/app_strings.dart';

enum LineCosmetic {
  cleansing(AppStrings.cleansing),
  regeneration(AppStrings.regeneration),
  hydration(AppStrings.hydration);

  final String name;

  const LineCosmetic(this.name);
}
