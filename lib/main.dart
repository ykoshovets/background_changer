import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final double _fontSize = 30.0;
  final String _welcomeText = "Hey there";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          _welcomeText,
          style: TextStyle(fontSize: _fontSize),
        )
      )
    );
  }
}
