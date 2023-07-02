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
                  margin: EdgeInsets.fromLTRB(20,20,20,0),
                  color: Colors.redAccent,
                  width: 150,
                  height: 150,
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
                            fontSize: 100,
                            letterSpacing: 5.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    )
                  ),
                ),
            AnimAppear(
                delay: 250,
                child: Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  color: Colors.redAccent,
                  width: 20,
                  height: 50,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                        "Creating the Leaders of Tomorrow",
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )
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