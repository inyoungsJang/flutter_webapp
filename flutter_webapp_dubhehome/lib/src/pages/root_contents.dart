import 'package:flutter/material.dart';
import 'package:flutter_webapp_dubhehome/src/controller/screen_layout_controller.dart';
import 'package:flutter_webapp_dubhehome/src/pages/flutter_contents.dart';
import 'package:get/get.dart';

class RootContents extends GetView<ScreenLayoutController> {
  RootContents();
  final ScrollController scrollController = ScrollController();

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      child: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("It is a long established fact that",
                    style: TextStyle(fontSize: 20),
                    textAlign: controller.type.value == ScreenSizeType.MOBILE
                        ? TextAlign.center
                        : TextAlign.left),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
                    style: TextStyle(fontSize: 14),
                    textAlign: controller.type.value == ScreenSizeType.MOBILE
                        ? TextAlign.center
                        : TextAlign.left),
              ],
            ),
          )),
    );
  }
}
