import 'package:flutter/material.dart';
import 'package:flutter_webapp_dubhehome/src/controller/screen_layout_controller.dart';

class RootPage extends StatelessWidget {
  final ScreenSizeType screenSizeType;
  RootPage(this.screenSizeType);

  final ScrollController scrollController = ScrollController();

  // Widget _menuhover(String menu, Function onTap) {
  //   return Container();
  // }

  Color getForegroundColor(Set<MaterialState> state) {
    const InteractiveViewer = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
    };

    // if(state.any((in) => false))
    return Colors.black;
  }

  Widget _contents({bool hasScroll = true}) {
    // true 면 스크롤바 활성화
    if (hasScroll) {
      return Scrollbar(
        controller: scrollController,
        //항상 스크롤바 출력
        isAlwaysShown: true,
        child: SingleChildScrollView(
          controller: scrollController,
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "It is a long established fact that",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
                  style: TextStyle(fontSize: 14),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
        ),
      );
    }
    // false 면 스크롤바 ㄴㄴ
    else {
      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "It is a long established fact that",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
      );
    }
  }

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
          _rightMenu(width: 100),
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
          _rightMenu(),
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
