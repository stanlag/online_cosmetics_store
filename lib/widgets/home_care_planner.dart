import 'package:flutter/material.dart';
import 'package:online_cosmetics_store/assets/res/app_strings.dart';
import 'package:online_cosmetics_store/widgets/card_product_image.dart';

import 'package:online_cosmetics_store/assets/colors/app_colors.dart';
import 'package:online_cosmetics_store/assets/res/app_assets.dart';
import 'package:online_cosmetics_store/domain/entity/cards_product.dart';
import 'package:online_cosmetics_store/utils/download_product.dart';
import 'error_widget.dart';
import 'loading_widget.dart';

class HomeCarePlanner extends StatelessWidget {
  const HomeCarePlanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            height: 200,
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
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                child: const Text(AppStrings.test),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
