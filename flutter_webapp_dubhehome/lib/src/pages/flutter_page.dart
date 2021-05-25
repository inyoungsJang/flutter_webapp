import 'package:flutter/material.dart';
import 'package:flutter_webapp_dubhehome/src/controller/screen_layout_controller.dart';
import 'package:flutter_webapp_dubhehome/src/pages/flutter_contents.dart';
import 'package:flutter_webapp_dubhehome/src/templete/default_templete.dart';

class FlutterPage extends StatelessWidget {
  FlutterPage();
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
      contents: FlutterContents(ScreenLayoutController.to.type.value),
    );
  }
}
