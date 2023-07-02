import 'package:flutter/material.dart';
import "package:pgn_app/pages/home.dart";
import "package:pgn_app/pages/signup.dart";

void main() => runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => SignUp(),
      '/home': (context) => Home(),
      '/signup': (context) => SignUp(),
      /*'/thankyoupage': (context) => ThankYou(),*/
    }
));
