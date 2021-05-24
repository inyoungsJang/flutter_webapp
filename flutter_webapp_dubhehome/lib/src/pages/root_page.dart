import 'package:flutter/material.dart';

class RootPage extends StatelessWidget {
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

  Widget _contents() {
    return Scrollbar(
      controller: scrollController,
      //항상 스크롤바 출력
      isAlwaysShown: true,
      child: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "It is a long established fact that",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: _contents(),
          ),
          SizedBox(
            width: 40,
          ),
          Container(
            width: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "대 메뉴",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  //  style: ButtonStyle(foregroundColor: getForegroundColor),
                  onPressed: () {},
                  child: Text(
                    "메뉴1",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                Text(
                  "메뉴2",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
