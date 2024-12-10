
import 'package:online_cosmetics_store/domain/entity/enum/product_filter.dart';
import 'package:online_cosmetics_store/domain/entity/products.dart';

abstract class FiltersProduct {

  static List<Product> filterProductsByCase(ProductFilter filter, List<Product> products) {
    switch (filter) {
      case ProductFilter.newProducts:
        return products.where((product) => product.isNew).toList();
      case ProductFilter.saleProducts:
        return products.where((product) => product.isOnSale).toList();
      case ProductFilter.hitProducts:
        return products.where((product) => product.isHit).toList();
      default:
        return products;
    }
  }



}