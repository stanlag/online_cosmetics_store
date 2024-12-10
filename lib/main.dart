import 'package:flutter/material.dart';
import 'package:online_cosmetics_store/presentation/tab_screen.dart';
import 'assets/themes/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.lightTheme,
      home: const TabScreen(),
    );
  }
}
