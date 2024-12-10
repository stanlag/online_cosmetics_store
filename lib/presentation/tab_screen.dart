import 'package:flutter/material.dart';
import 'package:online_cosmetics_store/assets/colors/app_colors.dart';
import 'package:online_cosmetics_store/assets/res/app_strings.dart';
import 'package:online_cosmetics_store/presentation/main_screen.dart';
import 'package:online_cosmetics_store/presentation/search_screen.dart';
import '../widgets/empty_widget.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int selectedIndex = 0;
  final List<Widget> widgetOptions = <Widget>[
    const MainScreen(),
    const SearchScreen(),
    const EmptyScreen(
      title: AppStrings.basket,
    ),
    const EmptyScreen(
      title: AppStrings.basket,
    ),
  ];

  void onItemTapped(int value) {
    setState(() {
      selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: AppColors.lightGrey,
              width: 1.0,
            ),
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: AppColors.black,
          selectedItemColor: AppColors.darkGrey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: AppStrings.main,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: AppStrings.search,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_mall_outlined,
              ),
              label: AppStrings.basket,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_outlined,
              ),
              label: AppStrings.personal,
            ),
          ],
          currentIndex: selectedIndex,
          onTap: onItemTapped,
        ),
      ),
    );
  }
}
