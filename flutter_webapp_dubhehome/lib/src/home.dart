import 'package:flutter/material.dart';
import 'package:flutter_webapp_dubhehome/src/components/contents.dart';
import 'package:flutter_webapp_dubhehome/src/components/footer.dart';
import 'package:flutter_webapp_dubhehome/src/components/header.dart';

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
      body: Container(
        alignment: Alignment.topCenter,
        constraints: BoxConstraints(maxWidth: 1280),
        child: Column(
          children: [
            // 배너, 컨텐트(내비), 푸터
            Header(),
            Expanded(child: Contents()),
            Fotter()
          ],
        ),
      ),
    );
  }
}
