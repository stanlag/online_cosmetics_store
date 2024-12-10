import 'package:online_cosmetics_store/domain/entity/button_item.dart';
import 'package:online_cosmetics_store/assets/res/app_strings.dart';

 class SubtypeSort {
  static final Map<String, List<ButtonItem>> buttonListSkinType = {
    AppStrings.skinType: [
      ButtonItem(
        title: AppStrings.oilySkin,
        onPress: () => print('Вы выбрали Жирную кожу'),
      ),
      ButtonItem(
        title: AppStrings.combinationSkin,
        onPress: () => print('Вы выбрали Комбинированную кожу'),
      ),
      ButtonItem(
        title: AppStrings.normalSkin,
        onPress: () => print('Вы выбрали Нормальную кожу'),
      ),
      ButtonItem(
        title: AppStrings.drySkin,
        onPress: () => print('Вы выбрали Сухую кожу'),
      ),
      ButtonItem(
        title: AppStrings.anySkinType,
        onPress: () => print('Вы выбрали Любой тип кожи'),
      ),
    ],
  };



}