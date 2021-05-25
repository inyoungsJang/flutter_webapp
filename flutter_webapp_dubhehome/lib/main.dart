import 'package:flutter/material.dart';
import 'package:flutter_webapp_dubhehome/src/controller/screen_layout_controller.dart';
import 'package:flutter_webapp_dubhehome/src/pages/flutter_page.dart';
import 'package:flutter_webapp_dubhehome/src/pages/home_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: BindingsBuilder(() {
        Get.put(ScreenLayoutController());
      }),
      initialRoute: "/", //라우트 구분자
      getPages: [
        GetPage(
          name: "/",
          page: () => HomePage(),
        ),
        GetPage(name: "/flutter", page: () => FlutterPage())
      ],
      //home: HomePage(),
    );
  }
}
