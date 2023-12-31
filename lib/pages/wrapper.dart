import 'package:flutter/material.dart';
import 'package:pgn_app/authenticator/authentication.dart';
import 'package:pgn_app/models/user.dart';
import 'package:pgn_app/pages/home/home.dart';
import 'package:pgn_app/pages/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';


class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

      final user = Provider.of<NewUser?>(context);

      if (user == null)
      {
          return Authenticate();
      }

      return Home();

  }
}
