import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RightMenu extends StatelessWidget {
  final double width;
  const RightMenu({this.width = 150});

  Widget _sideMenu(String menuName, VoidCallback onPress) {
    return TextButton(
      //  style: ButtonStyle(foregroundColor: getForegroundColor),
      style: ButtonStyle(
        alignment: Alignment.centerLeft,
        padding: MaterialStateProperty.resolveWith((states) => EdgeInsets.zero),
      ),
      onPressed: onPress,
      child: Text(
        menuName,
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "카테고리",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          _sideMenu("메뉴1", () {
            Get.toNamed("/flutter");
          }),
          _sideMenu("메뉴2", () {}),
        ],
      ),
    );
  }
}
