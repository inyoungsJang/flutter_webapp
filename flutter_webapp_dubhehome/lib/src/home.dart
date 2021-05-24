import 'package:flutter/material.dart';
import 'package:flutter_webapp_dubhehome/src/components/footer.dart';
import 'package:flutter_webapp_dubhehome/src/components/navigation_menu.dart';
import 'package:flutter_webapp_dubhehome/src/controller/screen_layout_controller.dart';
import 'package:flutter_webapp_dubhehome/src/pages/root_page.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomePage extends StatelessWidget {
  Widget _header() {
    return Placeholder(fallbackHeight: 300);
  }

  Widget _contents() {
    return Placeholder();
  }

  Widget _footer() {
    return Placeholder(fallbackHeight: 200);
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
          Obx(
            () => Container(
              color: Colors.white,
              alignment: Alignment.topCenter,
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 1280),
                child: Column(
                  children: [
                    // 배너, 컨텐트(내비), 푸터
                    NavigationMenu(ScreenLayoutController.to.type.value),
                    Expanded(
                        child: RootPage(ScreenLayoutController.to.type.value)),
                    Footer()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
