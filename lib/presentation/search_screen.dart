import 'package:flutter/material.dart';
import 'package:online_cosmetics_store/assets/res/app_strings.dart';

import '../widgets/home_care_planner.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: const TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search, color: Colors.grey),
            hintText: 'Поиск',
            border: InputBorder.none,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          _BuildButton(
            name: AppStrings.purpose,
            onPressed: () {},
          ),
          _BuildButton(
            name: AppStrings.productType,
            onPressed: () {},
          ),
          _BuildButton(
            name: AppStrings.skinType,
            onPressed: () {},
          ),
          _BuildButton(
            name: AppStrings.cosmeticLine,
            onPressed: () {},
          ),
          _BuildButton(
            name: AppStrings.sets,
            onPressed: () {},
          ),
          _BuildButton(
            name: AppStrings.promotions,
            onPressed: () {},
          ),
          _BuildButton(
            name: AppStrings.consultation,
            onPressed: () {},
          ),
          const Spacer(),
          const HomeCarePlanner(),
        ],
      ),
    );
  }
}

class _BuildButton extends StatelessWidget {
  const _BuildButton({super.key, required this.name, this.onPressed});
  final String name;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: Align(
              alignment: Alignment.centerLeft,
              child: TextButton(onPressed: onPressed, child: Text(name)))),
    );
  }
}
