import 'package:online_cosmetics_store/assets/res/app_assets.dart';
import 'package:online_cosmetics_store/domain/entity/cards_product.dart';
import 'package:online_cosmetics_store/assets/res/app_strings.dart';
import 'package:online_cosmetics_store/domain/entity/enum/line_cosmetic.dart';
import 'package:online_cosmetics_store/domain/entity/enum/product_type.dart';
import 'package:online_cosmetics_store/domain/entity/products.dart';
import 'package:online_cosmetics_store/domain/entity/enum/skin_type.dart';

import '../domain/entity/enum/category_product.dart';

class MockData {
  static final List<CardProduct> categoryProducts = [
    CardProduct(name: AppStrings.sets, image: AppAssets.sets),
    CardProduct(name: AppStrings.face, image: AppAssets.face),
    CardProduct(name: AppStrings.eyes, image: AppAssets.eyes),
    CardProduct(name: AppStrings.body, image: AppAssets.body),
    CardProduct(name: AppStrings.arm, image: AppAssets.arm)
  ];

  static final List<CardProduct> skinCareScheme = [
    CardProduct(name: AppStrings.demakeSkin, image: AppAssets.demakeSkin),
    CardProduct(name: AppStrings.cleansingSkin, image: AppAssets.cleansingSkin),
    CardProduct(name: AppStrings.serumSkin, image: AppAssets.serumSkin),
    CardProduct(name: AppStrings.cleansingSkin, image: AppAssets.cleansingSkin),
    CardProduct(name: AppStrings.serumSkin, image: AppAssets.serumSkin),
  ];

  static final List<Product> products = [
    Product(
        name: AppStrings.forever_young_total_renewal_serum,
        productType: ProductType.serum,
        skinType: SkinType.combination,
        cosmeticLine: LineCosmetic.regeneration,
        set: ProductCategory.body,
        isHit: true,
        image: AppAssets.forever_young_total_renewal_serum,
        price: 10195),
    Product(
        name: AppStrings.illustious_mask,
        productType: ProductType.mask,
        skinType: SkinType.dry,
        cosmeticLine: LineCosmetic.regeneration,
        set: ProductCategory.body,
        isHit: true,
        image: AppAssets.illustious_mask,
        price: 1595),
    Product(
        name: AppStrings.muse_serum_supreme,
        productType: ProductType.serum,
        skinType: SkinType.any,
        cosmeticLine: LineCosmetic.cleansing,
        set: ProductCategory.body,
        isOnSale: true,
        image: AppAssets.muse_serum_supreme,
        price: 10195),
    Product(
        name: AppStrings.unstress_revitalizing_toner_cream,
        productType: ProductType.cream,
        skinType: SkinType.combination,
        cosmeticLine: LineCosmetic.regeneration,
        set: ProductCategory.body,
        isOnSale: true,
        image: AppAssets.unstress_revitalizing_toner_cream,
        price: 1595),
    Product(
        name: AppStrings.unstress_revitalizing_toner,
        productType: ProductType.serum,
        skinType: SkinType.oily,
        cosmeticLine: LineCosmetic.cleansing,
        set: ProductCategory.body,
        isNew: true,
        image: AppAssets.unstress_revitalizing_toner,
        price: 10195),
    Product(
        name: AppStrings.unstress_total_serenity,
        productType: ProductType.toner,
        skinType: SkinType.oily,
        cosmeticLine: LineCosmetic.cleansing,
        set: ProductCategory.body,
        isNew: true,
        image: AppAssets.unstress_total_serenity,
        price: 3095),
    Product(
        name: AppStrings.forever_young_total_renewal_serum,
        productType: ProductType.serum,
        skinType: SkinType.combination,
        cosmeticLine: LineCosmetic.regeneration,
        set: ProductCategory.body,
        isHit: true,
        image: AppAssets.forever_young_total_renewal_serum,
        price: 10195),
    Product(
        name: AppStrings.illustious_mask,
        productType: ProductType.mask,
        skinType: SkinType.dry,
        cosmeticLine: LineCosmetic.regeneration,
        set: ProductCategory.body,
        isHit: true,
        image: AppAssets.illustious_mask,
        price: 1595),
    Product(
        name: AppStrings.muse_serum_supreme,
        productType: ProductType.serum,
        skinType: SkinType.any,
        cosmeticLine: LineCosmetic.cleansing,
        set: ProductCategory.body,
        isOnSale: true,
        image: AppAssets.muse_serum_supreme,
        price: 10195),
    Product(
        name: AppStrings.unstress_revitalizing_toner_cream,
        productType: ProductType.cream,
        skinType: SkinType.combination,
        cosmeticLine: LineCosmetic.regeneration,
        set: ProductCategory.body,
        isOnSale: true,
        image: AppAssets.unstress_revitalizing_toner_cream,
        price: 1595),
    Product(
        name: AppStrings.unstress_revitalizing_toner,
        productType: ProductType.serum,
        skinType: SkinType.oily,
        cosmeticLine: LineCosmetic.cleansing,
        set: ProductCategory.body,
        isNew: true,
        image: AppAssets.unstress_revitalizing_toner,
        price: 10195),
    Product(
        name: AppStrings.unstress_total_serenity,
        productType: ProductType.toner,
        skinType: SkinType.oily,
        cosmeticLine: LineCosmetic.cleansing,
        set: ProductCategory.body,
        isNew: true,
        image: AppAssets.unstress_total_serenity,
        price: 3095)
  ];
}
