import 'package:flutter/material.dart';

const Color _customColor = Color.fromRGBO(70, 149, 70, 1);

//create a list of colors named colorThemes
List<Color> _colorThemes = [
  _customColor,
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.teal,
  Colors.brown,
  Colors.grey,
  Colors.indigo,
  Colors.lime,
  Colors.amber,
  Colors.cyan,
  Colors.deepOrange,
  Colors.deepPurple,
  Colors.lightBlue,
  Colors.lightGreen,
  Colors.purpleAccent,
  Colors.redAccent,
  Colors.tealAccent,
  Colors.yellowAccent,
  Colors.blueAccent,
  Colors.greenAccent,
  Colors.orangeAccent,
  Colors.pinkAccent,
  Colors.cyanAccent,
  Colors.limeAccent,
  Colors.amberAccent,
  Colors.deepOrangeAccent,
  Colors.deepPurpleAccent,
  Colors.lightBlueAccent,
  Colors.lightGreenAccent,
];

class AppTheme {
  int selectedColor;

  AppTheme({this.selectedColor = 0}): assert(selectedColor >= 0 && selectedColor < _colorThemes.length);

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}
