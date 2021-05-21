import 'package:flutter/material.dart';

class Contents extends StatefulWidget {
  @override
  _ContentsState createState() => _ContentsState();
}

class _ContentsState extends State<Contents> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                
                onPressed: () {},
                child: Text(
                  "회사소개",
                  style: TextStyle(color: Colors.amber, fontSize: 12),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text("조직도"),
              ),
              TextButton(
                onPressed: () {},
                child: Text("연혁"),
              ),
              TextButton(
                onPressed: () {},
                child: Text("비젼"),
              ),
              TextButton(
                onPressed: () {},
                child: Text("인증서"),
              ),
              TextButton(
                onPressed: () {},
                child: Text("오시는길"),
              ),
            ],
          ),
          Container(),
        ],
      ),
    );
  }
}
