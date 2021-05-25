import 'package:flutter/material.dart';
import 'package:flutter_webapp_dubhehome/src/components/footer.dart';
import 'package:flutter_webapp_dubhehome/src/components/navigation_menu.dart';
import 'package:flutter_webapp_dubhehome/src/components/right_menu.dart';
import 'package:flutter_webapp_dubhehome/src/controller/screen_layout_controller.dart';
import 'package:flutter_webapp_dubhehome/src/pages/root_contents.dart';
import 'package:flutter_webapp_dubhehome/src/templete/default_templete.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomePage extends StatelessWidget {
  HomePage();
  final GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();

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
    return DefaultTemplate(
      contents: RootContents(),
    );
  }
}
