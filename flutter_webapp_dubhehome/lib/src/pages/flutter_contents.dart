import 'package:flutter/material.dart';
import 'package:flutter_webapp_dubhehome/src/controller/screen_layout_controller.dart';

class FlutterContents extends StatelessWidget {
  final ScreenSizeType screenSizeType;
  FlutterContents(this.screenSizeType);

  final ScrollController scrollController = ScrollController();

  Widget _contentsDetail() {
    return SingleChildScrollView(
      controller: scrollController,
      child: Padding(
        //padding: const EdgeInsets.only(right: 20),
        padding: const EdgeInsets.all(10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("What is Lorem Ipsum? Lorem Ipsum ",
                style: TextStyle(fontSize: 20),
                textAlign: screenSizeType == ScreenSizeType.MOBILE
                    ? TextAlign.center
                    : TextAlign.left),
            SizedBox(
              height: 20,
            ),
            Text(
                "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                style: TextStyle(fontSize: 14),
                textAlign: screenSizeType == ScreenSizeType.MOBILE
                    ? TextAlign.center
                    : TextAlign.left),
          ],
        ),
      ),
    );
  }

  Widget _contents({bool hasScroll = true}) {
    // true 스크롤바 활성화
    if (hasScroll) {
      return Scrollbar(
        controller: scrollController,
        isAlwaysShown: true, //항상 스크롤바 출력
        child: _contentsDetail(),
      );
    }
    // false 스크롤바 출력 안됌
    else {
      return _contentsDetail();
    }
  }

  Widget _sideMenu(String menuName, VoidCallback onPress) {
    return TextButton(
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

  Widget _mobileLayout() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: _contents(hasScroll: false),
          ),
        ],
      ),
    );
  }

  Widget _tabletLayout() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: _contents(),
          ),
          //  _rightMenu(width: 100),
        ],
      ),
    );
  }

  Widget _desktopLayout() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: _contents(),
          ),
          //    _rightMenu(),
        ],
      ),
    );
  }

// 디바이스 사이즈에 따라 값 설정
  @override
  Widget build(BuildContext context) {
    switch (screenSizeType) {
      case ScreenSizeType.MOBILE:
        return _mobileLayout();
        break;
      case ScreenSizeType.TABLET:
        return _tabletLayout();
        break;
      case ScreenSizeType.DESKTOP:
        return _desktopLayout();
        break;
    }
  }

// 오른쪽 사이드 메뉴
  Widget _rightMenu({double width = 150}) {
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
          _sideMenu("메뉴1", () {}),
          _sideMenu("메뉴2", () {}),
        ],
      ),
    );
  }
}
