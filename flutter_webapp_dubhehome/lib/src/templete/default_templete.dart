import 'package:flutter/material.dart';
import 'package:flutter_webapp_dubhehome/src/components/footer.dart';
import 'package:flutter_webapp_dubhehome/src/components/navigation_menu.dart';
import 'package:flutter_webapp_dubhehome/src/components/right_menu.dart';
import 'package:flutter_webapp_dubhehome/src/controller/screen_layout_controller.dart';
import 'package:flutter_webapp_dubhehome/src/pages/flutter_contents.dart';
import 'package:get/get.dart';

class DefaultTemplate extends StatelessWidget {
  Widget contents;
  DefaultTemplate({this.contents});
  final GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();

  Widget _contentsView() {
    List<Widget> list = [Expanded(child: contents)];

    // 스크린컨트롤타입값이 모바일이아니면 오른쪽메뉴 출력
    // 즉, 모바일을 제외하고 테스트탑,테블릿에만 오른쪽메뉴를 출력해준다.
    if (ScreenLayoutController.to.type.value != ScreenSizeType.MOBILE) {
      list.add(RightMenu(
          width: ScreenLayoutController.to.type.value == ScreenSizeType.TABLET
              ? 100
              : 150));
    }

    return Row(
      children: list,
    );
  }

  Widget _layout({bool hasDrawer = false}) {
    return Scaffold(
      //drawer 설정
      //mobile일 경우 true값 전달됌으로 drawer활성화 그외에는 null (오른쪽메뉴로 대체)
      key: _key,
      drawer: hasDrawer
          ? Container(
              width: Get.size.width * 0.7,
              color: Colors.white,
              child: Container(
                margin: const EdgeInsets.only(top: 20, left: 20),
                child: RightMenu(),
              ),
            )
          : null,
      body: Container(
        color: Colors.white,
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1280),
          child: Column(
            children: [
              Stack(
                children: [
                  InkWell(
                    onTap: () {
                      _key.currentState.openDrawer();
                    },
                    child: Container(
                      width: 80,
                      height: 80,
                      child: Icon(Icons.menu),
                    ),
                  ),
                  NavigationMenu(ScreenLayoutController.to.type.value)
                ],
              ),
              Expanded(child: _contentsView()),
              Footer()
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              ScreenLayoutController.to.builder(constraints);
              return Container();
            },
          ),
          // 이벤트 상태 감지함
          Obx(() {
            //스크린타입이 모바일경우 hasDrawer이 true가 됌으로 _layout메서드
            //그외는 break문이 적용되지않아 default로 이동하여 false값을 가진채 _layout메서드에 도달하여
            switch (ScreenLayoutController.to.type.value) {
              case ScreenSizeType.MOBILE:
                return _layout(hasDrawer: true);
                break;
              case ScreenSizeType.TABLET:
              case ScreenSizeType.DESKTOP:
              default:
                return _layout();
            }
          }),
        ],
      ),
    );
  }
}

//사이즈 영역 잡을때 편리함
Widget _header() {
  return Placeholder(fallbackHeight: 300);
}

Widget _contents() {
  return Placeholder();
}

Widget _footer() {
  return Placeholder(fallbackHeight: 200);
}
