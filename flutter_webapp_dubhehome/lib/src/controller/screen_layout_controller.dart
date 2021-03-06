import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

enum ScreenSizeType { MOBILE, TABLET, DESKTOP }

class ScreenLayoutController extends GetxController {
  static ScreenLayoutController get to => Get.find(); //어디서든 검색 가능
  Rx<ScreenSizeType> _screenType = ScreenSizeType.DESKTOP.obs;
  Rx<ScreenSizeType> type = ScreenSizeType.DESKTOP.obs;

  @override
  void onInit() {
    debounce(_screenType, (_) {
      type(_screenType.value);
    }, time: Duration(microseconds: 200));
    super.onInit();
  }

  void builder(BoxConstraints constraints) {
    if (constraints.biggest.width <= 480) {
      //mobile
      _screenType(ScreenSizeType.MOBILE);
      //리엑트 방식(?)

    } else if (constraints.biggest.width > 480 &&
        constraints.biggest.width <= 768) {
      //tablet
      _screenType(ScreenSizeType.TABLET);
    } else {
      _screenType(ScreenSizeType.DESKTOP);
    }
  }
}
