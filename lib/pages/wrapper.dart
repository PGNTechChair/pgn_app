import 'package:flutter/material.dart';
import "package:pgn_app/pages/home.dart";
import 'package:pgn_app/pages/login.dart';


class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //Return either Home() or Authenticate Widget
    return Login();
  }
}
