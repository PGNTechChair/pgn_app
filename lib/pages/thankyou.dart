import 'package:flutter/material.dart';
import 'package:pgn_app/Buttons/ambersubmitbutton.dart';

class ThankYou extends StatefulWidget {
  @override
  _ThankYouState createState() => _ThankYouState();
}

class _ThankYouState extends State<ThankYou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(10, 150, 10, 0),
                width: 500,
                height: 200,
                alignment: Alignment.center,
                child: Text(
                    "Thank you for Signing Up With Us!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
              SizedBox(height: 80.0),
              Align(
                alignment: Alignment.topCenter,
                child: AmberSubmitButton(
                  message: "Return to Login.",
                  onTap: () {
                    Navigator.pushNamed(context, '/login');
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}