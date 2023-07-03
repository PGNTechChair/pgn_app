import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pgn_app/Controllers/AnimationAppearController.dart';
import 'package:pgn_app/Buttons/ambersubmitbutton.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AnimAppear(
                  delay: 250,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20,20,20,0),
                    color: Colors.redAccent,
                    width: double.infinity,
                    height: 135,
                    child: Align(
                        alignment: Alignment.bottomCenter,
                          child: Text(
                            "PGN",
                            style: TextStyle(
                              fontSize: 100,
                              letterSpacing: 5.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                          ),
                        )
                      )
                  ),
              AnimAppear(
                  delay: 250,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    color: Colors.redAccent,
                    width: double.infinity,
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
              ),
              SizedBox(height: 8.0),
              AnimAppear(
                  delay: 250,
                  child: Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      color: Colors.redAccent,
                      width: 150,
                      height: 50,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              "Sign Up",
                              style: TextStyle(
                                fontSize: 25,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )
                          )
                      )
                  )
              ),
              AnimAppear(
                delay: 250,
                child: Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: RichText(
                    text: TextSpan(
                      text: "Already with us?\t",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                      children: <TextSpan> [
                        TextSpan(
                            text: "Login Here!",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              decorationThickness: 2.0,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, '/login');
                            }
                        ),
                      ]
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
                          alignment: Alignment.centerLeft,
                          child: Text(
                              "First Name",
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
                          alignment: Alignment.centerLeft,
                          child: Text(
                              "Last Name",
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
                          alignment: Alignment.centerLeft,
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
                          alignment: Alignment.centerLeft,
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
              AnimAppear(
                  delay: 250,
                  child: Container(
                      margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                      color: Colors.redAccent,
                      width: 100,
                      height: 20,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              "Major",
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
                          alignment: Alignment.centerLeft,
                          child: Text(
                              "Year",
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
              SizedBox(height: 30.0),
              AnimAppear(
                delay: 250,
                child: Align(
                  alignment: Alignment.center,
                  child: AmberSubmitButton(
                    message: "Sign Up!",
                    onTap: () {
                      Navigator.pushNamed(context, '/thankyou');
                    },
                  ),
                )
              ),
              SizedBox(height: 15.0,)
            ],
          ),
        ),
      ),
    );
  }
}