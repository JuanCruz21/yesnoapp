import 'package:flutter/material.dart';

const Color _customColor = Color(0xFFE31952);
const List<Color> _colorthemes = [
  _customColor,
  Colors.blueGrey,
  Colors.yellowAccent,
  Colors.lime,
  Colors.purple
];

class AppTheme {
  int chosecolor;

  AppTheme({this.chosecolor = 0})
      : assert(chosecolor >= 0 && chosecolor < _colorthemes.length - 1);

  ThemeData theme() {
    return ThemeData(colorSchemeSeed: _colorthemes[chosecolor],
      // brightness: Brightness.dark
    );
  }
}
