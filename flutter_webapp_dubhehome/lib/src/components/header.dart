import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  Widget menu(String munu, GestureTapCallback onTap) {
    return InkWell(
      mouseCursor: MaterialStateMouseCursor.clickable,
      //마우스 호버했을때 배경색
      // hoverColor: Colors.amber,
      hoverColor: Colors.transparent,
      //클릭했을때의 배경색
      // splashColor: Colors.yellowAccent,
      splashColor: Colors.transparent,
      //클릭했을때의 배경색
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(munu),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: 80,
              ),
              Row(
                children: [
                  menu("홈", () {}),
                  menu("블로그", () {}),
                  menu("유튜브", () {}),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
