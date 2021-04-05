import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'generators/color_generator.dart';
import 'generators/rgb_color_generator.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ColorGenerator _colorGenerator = RgbColorGenerator();
  final double _fontSize = 30.0;
  final String _welcomeText = "Hey there";
  Color _backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return GestureDetector(
      child: Scaffold(
        backgroundColor: _backgroundColor,
        body: Center(
          child: Text(
            _welcomeText,
            style: TextStyle(fontSize: _fontSize),
          )
        )
      ),
      onTap: () {
        _changeBackground();
      },
    );
  }

  void _changeBackground() {
    setState(() {
      _backgroundColor = _colorGenerator.generateColor();
    });
  }
}
