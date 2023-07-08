import 'package:flutter/material.dart';
import "package:pgn_app/pages/home.dart";


class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //Return either Home() or Authenticate Widget
    return Home();
  }
}
