import 'package:flutter/material.dart';
import 'package:pgn_app/Controllers/AnimationAppearController.dart';
import 'package:pgn_app/Buttons/ambersubmitbutton.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              AnimAppear(
                delay: 250,
                child: Container(
                    margin: EdgeInsets.fromLTRB(20,0,20,0),
                    color: Colors.redAccent,
                    width: double.infinity,
                    height: 200,
                    child: Align(
                      alignment: Alignment.center,
                        child: Text(
                          "PGN\nLogin",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 50,
                            letterSpacing: 5.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
              AnimAppear(
                  delay: 250,
                  child: Container(
                      margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                      color: Colors.redAccent,
                      width: 100,
                      height: 20,
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                              "Email",
                              style: TextStyle(
                                fontSize: 15,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )
                          )
                      )
                  )
              ),
              SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.fromLTRB(10,0,10,0),
                child: AnimAppear(
                    delay: 250,
                    child: SizedBox(
                      width: 300,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white70,
                          filled: true,
                          border: OutlineInputBorder(),
                        ),
                      ),
                    )
                ),
              ),
              AnimAppear(
                  delay: 250,
                  child: Container(
                      margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                      color: Colors.redAccent,
                      width: 100,
                      height: 20,
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                              "Password",
                              style: TextStyle(
                                fontSize: 15,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )
                          )
                      )
                  )
              ),
              SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.fromLTRB(10,0,10,0),
                child: AnimAppear(
                    delay: 250,
                    child: SizedBox(
                      width: 300,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white70,
                          filled: true,
                          border: OutlineInputBorder(),
                        ),
                      ),
                    )
                ),
              ),
              SizedBox(height:50.0),
              AnimAppear(
                delay: 250,
                child: AmberSubmitButton(
                    message: "Login!",
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}