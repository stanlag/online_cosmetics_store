
import 'package:online_cosmetics_store/assets/res/app_strings.dart';
///тип продукта
enum ProductType {
  serum(AppStrings.serum),
  cream(AppStrings.cream),
  mask(AppStrings.mask),
  toner(AppStrings.toner);

  final String name;

  const ProductType(this.name);
}