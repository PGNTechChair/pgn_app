import 'package:flutter/material.dart';
import 'package:pgn_app/Controllers/AnimationAppearController.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            AnimAppear(
                delay: 250,
                child: Container(
                  margin: EdgeInsets.all(20),
                  color: Colors.amber,
                  width: 100,
                  height: 100,
                  child: Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        child: Text(
                          "PGN",
                          style: TextStyle(
                            fontSize: 50,
                            letterSpacing: 5.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    )
                  )
            )
          ],
        ),
      ),
    );
  }
}