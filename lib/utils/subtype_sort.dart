import 'package:online_cosmetics_store/domain/entity/button_item.dart';
import 'package:online_cosmetics_store/assets/res/app_strings.dart';

class SubtypeSort {
  static final Map<String, List<ButtonItem>> buttonListSkinType = {
    AppStrings.skinType: [
      ButtonItem(title: AppStrings.oilySkin, onPress: () {}),
      ButtonItem(title: AppStrings.combinationSkin, onPress: () {}),
      ButtonItem(title: AppStrings.normalSkin, onPress: () {}),
      ButtonItem(title: AppStrings.drySkin, onPress: () {}),
      ButtonItem(title: AppStrings.anySkinType, onPress: () {}),
    ],
  };
}
