import 'package:flutter/material.dart';
import 'package:online_cosmetics_store/assets/res/app_assets.dart';
import 'package:online_cosmetics_store/data/mock_data.dart';
import 'package:online_cosmetics_store/widgets/card_product_image.dart';
import 'package:online_cosmetics_store/widgets/error_widget.dart';
import 'package:online_cosmetics_store/widgets/loading_widget.dart';
import 'package:online_cosmetics_store/widgets/product_list_widget.dart';
import 'package:online_cosmetics_store/assets/colors/app_colors.dart';
import 'package:online_cosmetics_store/assets/res/app_strings.dart';
import 'package:online_cosmetics_store/domain/entity/enum/product_filter.dart';
import 'package:online_cosmetics_store/utils/filters_product.dart';
import 'package:online_cosmetics_store/widgets/button_grid.dart';
import 'package:online_cosmetics_store/utils/download_product.dart';
import 'package:online_cosmetics_store/widgets/skin_care_scheme.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 375,
            width: double.infinity,
            child: Image.asset(
              AppAssets.banner,
              fit: BoxFit.cover,
            ),
          ),
          FutureBuilder(
            future: DownloadProduct.downloadProduct(MockData.categoryProducts),
            builder: (_, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return const ErrorMyWidget();
                } else if (snapshot.hasData) {
                  final data = snapshot.data;
                  return SizedBox(
                    height: 150,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: data?.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, int index) {
                        return CardProductImage(cardProduct: data![index]);
                      },
                    ),
                  );
                }
              }
              return const LoadingWidget();
            },
          ),
          ProductListWidget(
            title: AppStrings.news,
            products: FiltersProduct.filterProductsByCase(
                ProductFilter.newProducts, MockData.products),
            startGradientColor: AppColors.white,
            endGradientColor: AppColors.turquoise,
          ),
          SkinCareScheme(cardProduct: MockData.skinCareScheme),
          ProductListWidget(
            title: AppStrings.sale,
            products: FiltersProduct.filterProductsByCase(
                ProductFilter.saleProducts, MockData.products),
            startGradientColor: AppColors.white,
            endGradientColor: AppColors.lilac,
          ),
          const ButtonGrid(),
          ProductListWidget(
            title: AppStrings.hit,
            products: FiltersProduct.filterProductsByCase(
                ProductFilter.hitProducts, MockData.products),
            startGradientColor: AppColors.white,
            endGradientColor: AppColors.orange,
          )
        ],
      ),
    );
  }
}
