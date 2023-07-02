import 'package:flutter/material.dart';
import "package:pgn_app/pages/home.dart";
import "package:pgn_app/pages/signup.dart";
import "package:pgn_app/pages/thankyou.dart";
import "package:pgn_app/pages/login.dart";

void main() => runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => SignUp(),
      '/home': (context) => Home(),
      '/signup': (context) => SignUp(),
      '/thankyou': (context) => ThankYou(),
      '/login' : (context) => Login(),
    }
));
