import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.black54),
      child: Container(
        margin: const EdgeInsets.all(5),
        child: Text(
          "Copyright 2021 i.nyoung All Rights Reserved.",
          style: TextStyle(fontSize: 9, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
