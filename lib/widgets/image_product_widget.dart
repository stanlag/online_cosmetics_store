import 'package:flutter/material.dart';
import 'package:online_cosmetics_store/domain/entity/products.dart';

import '../assets/colors/app_colors.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8, top: 15, left: 8, right: 8),
          child: Container(
            height: 187,
            width: 161,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image(image: AssetImage(product.image)),
          ),
        ),
        SizedBox(
          width: 161,
          child: Text(
            product.productType.name,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.black,
                ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
            width: 161,
            child: Text(
              product.name,
              softWrap: true,
              overflow: TextOverflow.visible,
              maxLines: 2,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: AppColors.black,
                  ),
            )),
        const SizedBox(
          height: 10,
        ),
        Text(
          '${product.price} ₽',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: AppColors.black,
              ),
        ),
      ],
    );
  }
}
