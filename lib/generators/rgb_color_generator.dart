import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'color_generator.dart';

class RgbColorGenerator implements ColorGenerator {
  int _red;
  int _green;
  int _blue;

  @override
  Color generateColor() {
    _setColorComponents();
    return Color.fromRGBO(_red, _green, _blue, 1);
  }

  void _setColorComponents() {
    _red = _randomizeColorComponent();
    _green = _randomizeColorComponent();
    _blue = _randomizeColorComponent();
  }

  int _randomizeColorComponent() => math.Random().nextInt(256);
}
