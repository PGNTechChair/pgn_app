import 'package:flutter/material.dart';
import 'package:pgn_app/Controllers/AnimationAppearController.dart';
import 'package:pgn_app/Controllers/AnimationAppearController.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Text('Home Screen')
          ],
        ),
      ),
    );
  }
}

