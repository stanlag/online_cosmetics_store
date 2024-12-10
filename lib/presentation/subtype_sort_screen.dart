import 'package:flutter/material.dart';
import 'package:online_cosmetics_store/domain/entity/button_item.dart';

class SubtypeSortScreen extends StatelessWidget {
  const SubtypeSortScreen({super.key, required this.buttonList});
  final Map<String, List<ButtonItem>> buttonList;

  @override
  Widget build(BuildContext context) {
    String categoryTitle = buttonList.keys.first;
    List<ButtonItem> buttons = buttonList[categoryTitle]!;

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemCount: buttons.length,
        itemBuilder: (context, index) {
          final button = buttons[index];
          return Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: button.onPress,
                child: Text(button.title),
              ),
            ),
          );
        },
      ),
    );
  }
}
