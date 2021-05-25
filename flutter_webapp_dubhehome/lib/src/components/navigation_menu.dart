import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_webapp_dubhehome/src/controller/screen_layout_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigationMenu extends GetView<ScreenLayoutController> {
  ScreenSizeType screenSizeType;
  NavigationMenu(this.screenSizeType);

  Widget menu(String menu, GestureTapCallback onTap) {
    return InkWell(
      mouseCursor: MaterialStateMouseCursor.clickable,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          menu,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _menuGroup() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        menu("홈", () {
          Get.toNamed("/");
        }),
        menu("GOOGLE", () {
          launch("https://www.google.co.kr");
        }),
        menu("유튜브", () {
          launch("https://youtube.com");
        }),
      ],
    );
  }

  Widget _mobileLayout() {
    return Container(
      child: Column(
        children: [
          Image.asset(
            "assets/images/logo.png",
            width: 80,
          ),
          SizedBox(
            height: 20,
          ),
          _menuGroup(),
        ],
      ),
    );
  }

  Widget _desktopLayout() {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: 80,
              ),
              _menuGroup(),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (screenSizeType) {
      case ScreenSizeType.MOBILE:
        return _mobileLayout();
        break;
      case ScreenSizeType.TABLET:
        return _desktopLayout();
        break;
      case ScreenSizeType.DESKTOP:
        return _desktopLayout();
        break;
    }
  }
}
