import 'package:flutter/material.dart';

class TextLabel extends StatelessWidget {
  final String title;

  TextLabel({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 30),
    );
  }
}
