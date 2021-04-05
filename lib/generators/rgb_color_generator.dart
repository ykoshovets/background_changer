import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'color_generator.dart';

class RgbColorGenerator implements ColorGenerator {

  @override
  Color generateColor() {
    final int red = _randomizeColorComponent();
    final int green = _randomizeColorComponent();
    final int blue = _randomizeColorComponent();
    return Color.fromRGBO(red, green, blue, 1);
  }

  int _randomizeColorComponent() => math.Random().nextInt(256);
}
