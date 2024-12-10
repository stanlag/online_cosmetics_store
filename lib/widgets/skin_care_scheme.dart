import 'package:flutter/material.dart';
import 'package:online_cosmetics_store/assets/res/app_strings.dart';
import 'package:online_cosmetics_store/widgets/card_product_image.dart';

import 'package:online_cosmetics_store/assets/colors/app_colors.dart';
import 'package:online_cosmetics_store/assets/res/app_assets.dart';
import 'package:online_cosmetics_store/domain/entity/cards_product.dart';
import 'package:online_cosmetics_store/utils/download_product.dart';
import 'error_widget.dart';
import 'loading_widget.dart';

class SkinCareScheme extends StatelessWidget {
  const SkinCareScheme({super.key, required this.cardProduct});
  final List<CardProduct> cardProduct;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            height: 250,
            decoration: const BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(AppAssets.background), // Замените на свой фон
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(height: 20),
              Text(
                AppStrings.scheme,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: AppColors.black,
                    ),
              ),
              const SizedBox(height: 10),
              FutureBuilder(
                future: DownloadProduct.downloadProduct(cardProduct),
                builder: (_, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasError) {
                      return const ErrorMyWidget();
                    } else if (snapshot.hasData) {
                      final data = snapshot.data;
                      return SizedBox(
                        height: 130, // Ограничиваем высоту списка
                        width: double.infinity,
                        child: ListView.builder(
                          itemCount: data?.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, int index) {
                            return CardProductImage(
                              cardProduct: data![index],
                            );
                          },
                        ),
                      );
                    }
                  }
                  return const LoadingWidget();
                },
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    AppStrings.question,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: AppColors.black),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(AppStrings.test),
                )
              ]),
            ]),
          ),
        ],
      ),
    );
  }
}
