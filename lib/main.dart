import 'package:flutter/material.dart';
import "package:pgn_app/pages/home.dart";

void main() => runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/home': (context) => Home(),
      /*'/login': (context) => Login(),*/
    }
));
