import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7), color: Colors.grey.shade200),
      //padding: EdgeInsets.all(3),
      child: Text(
        "Copyright 2021 i.nyoung All Rights Reserved.",
        style: TextStyle(
          fontSize: 10,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
