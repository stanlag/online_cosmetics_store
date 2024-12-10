import 'package:flutter/material.dart';
import 'package:online_cosmetics_store/data/mock_data.dart';
import 'package:online_cosmetics_store/domain/entity/products.dart';
import 'package:online_cosmetics_store/utils/download_product.dart';

import '../assets/colors/app_colors.dart';
import '../assets/text/text_style.dart';
import '../assets/text/text_style.dart';
import '../assets/text/text_style.dart';
import 'error_widget.dart';
import 'image_product_widget.dart';
import 'loading_widget.dart';

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({
    super.key,
    required this.title,
    required this.products,
    required this.startGradientColor,
    required this.endGradientColor,
  });

  final List<Product> products;
  final String title;
  final Color startGradientColor;
  final Color endGradientColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Заголовок
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: AppColors.black,
            ),
          ),
          const SizedBox(height: 8),
          // Градиентная линия
          Container(
            width: 118,
            height: 4,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  startGradientColor,
                  endGradientColor,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
          const SizedBox(height: 8),
          // Список продуктов
          FutureBuilder(
            future: DownloadProduct.downloadProduct(products),
            builder: (_, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return const ErrorMyWidget();
                } else if (snapshot.hasData) {
                  final data = snapshot.data;
                  return SizedBox(
                    height: 320, // Ограничиваем высоту списка
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: data?.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, int index) {
                        return ProductImage(
                          product: data![index],
                        );
                      },
                    ),
                  );
                }
              }
              return const LoadingWidget();
            },
          ),
        ],
      ),
    );
  }
}
