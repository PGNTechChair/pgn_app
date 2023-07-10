import "package:firebase_core/firebase_core.dart";
import 'package:flutter/material.dart';
import "package:pgn_app/models/user.dart";
import "package:pgn_app/pages/home.dart";
import "package:pgn_app/pages/signup.dart";
import "package:pgn_app/pages/thankyou.dart";
import "package:pgn_app/pages/login.dart";
import "package:pgn_app/pages/wrapper.dart";
import "package:pgn_app/services/auth.dart";
import "package:provider/provider.dart";
import "package:pgn_app/authenticator/authentication.dart";


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    StreamProvider<NewUser?>.value(
      value: AuthService().user,
      initialData: null,
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => Wrapper(),
          '/home': (context) => Home(),
          '/signup': (context) => SignUp(toggleView: () {}),
          '/thankyou': (context) => ThankYou(),
          '/login': (context) => Login(toggleView: () {}),
        },
      ),
    ),
  );
}
