import 'package:flutter/material.dart';
import 'package:flutter_assignment/text_label.dart';

class TextControl extends StatefulWidget {
  const TextControl({Key? key}) : super(key: key);

  @override
  _TextControlState createState() => _TextControlState();
}

const textStrings = [
  "Welcome to my app",
  "Having fun clicking the button?",
  "Please click the button again",
  "Great to know you"
];

class _TextControlState extends State<TextControl> {
  var _selectedIndex = 0;

  void _onPressed() {
    setState(() {
      if (_selectedIndex < textStrings.length - 1) {
        _selectedIndex += 1;
      } else {
        _selectedIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          padding: EdgeInsets.all(20),
          child: TextLabel(title: textStrings[_selectedIndex])),
      ElevatedButton(
        onPressed: _onPressed,
        child: Text("Button"),
      )
    ]);
  }
}
