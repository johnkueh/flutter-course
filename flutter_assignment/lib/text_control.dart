import 'package:flutter/material.dart';

class TextControl extends StatefulWidget {
  const TextControl({Key? key}) : super(key: key);

  @override
  _TextControlState createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  void _onPressed() {
    print('Pressed button');
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          padding: EdgeInsets.all(20),
          child: Text(
            "A string of text here",
            style: TextStyle(fontSize: 30),
          )),
      ElevatedButton(
        onPressed: _onPressed,
        child: Text("Button"),
      )
    ]);
  }
}
