import 'package:online_cosmetics_store/domain/entity/enum/line_cosmetic.dart';
import 'package:online_cosmetics_store/domain/entity/enum/product_type.dart';
import 'package:online_cosmetics_store/domain/entity/enum/skin_type.dart';

import 'enum/category_product.dart';

class Product {
  // Название продукта
  final String name;
  // Тип средства
  final ProductType productType;
  // Тип кожи
  final SkinType skinType;
  // Линия косметики
  final LineCosmetic cosmeticLine;
  // Наборы
  final ProductCategory set;
  // Участвует ли в акции
  final bool isOnSale;
  // Является ли хитом
  final bool isHit;
  // Является ли новинкой
  final bool isNew;
  // Изображение
  final String image;
  // Цена
  final int price;

  Product({
    required this.name,
    required this.productType,
    required this.skinType,
    required this.cosmeticLine,
    required this.set,
    this.isOnSale = false,
    this.isHit = false,
    this.isNew = false,
    required this.image,
    required this.price,
  });

}
