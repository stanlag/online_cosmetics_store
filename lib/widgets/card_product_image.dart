import 'package:flutter/material.dart';
import 'package:online_cosmetics_store/domain/entity/cards_product.dart';
import 'package:online_cosmetics_store/assets/colors/app_colors.dart';

class CardProductImage extends StatelessWidget {
  const CardProductImage({super.key, required this.cardProduct});
  final CardProduct cardProduct;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8, top: 15, left: 8, right: 8),
          child: Container(
            height: 72,
            width: 72,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image(image: AssetImage(cardProduct.image)),
          ),
        ),
        Text(cardProduct.name,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.black,
                )),
      ],
    );
  }
}
