import 'package:flutter/material.dart';
import 'package:pgn_app/authenticator/authentication.dart';
import "package:pgn_app/pages/home.dart";
import 'package:pgn_app/pages/login.dart';
import 'package:firebase_core/firebase_core.dart';


class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (
        BuildContext context,
        AsyncSnapshot<dynamic> snapshot)
        {
            //TODO: Add Error handling
            /*
            if (snapshot.hasError)
            {
              return null;
            }*/

          if (snapshot.connectionState == ConnectionState.done)
          {
              return Login();
          }

          return Authenticate();


        },
      );


  }
}
