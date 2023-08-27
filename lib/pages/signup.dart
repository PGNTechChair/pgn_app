import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pgn_app/controllers/AnimationAppearController.dart';
import 'package:pgn_app/shared/ambersubmitbutton.dart';
import 'package:pgn_app/services/auth.dart';
import 'package:pgn_app/shared/loading.dart';

class SignUp extends StatefulWidget {

  late final Function toggleView;

  SignUp({required this.toggleView});

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {


  final AuthService _authService = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;
  final List<String> years = ['Freshman', 'Sophomore', 'Junior', 'Senior'];
  final List<String> statuses = ['PGN Member', 'Guest'];


  // text field state
  String email = '';
  String password = '';
  String major = '';
  String year  ='';
  String firstName = '';
  String lastName = '';
  String error = '';
  String memberStatus = '';

  @override
  Widget build(BuildContext context) {

    return loading ? Loading() : Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 128, 0, 0),
              Color.fromARGB(255, 196, 32, 10),
              Color.fromARGB(255, 178, 95, 1),
              Color.fromARGB(255,0,0,0),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20,20,20,0),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * (135/683.4),
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
                      ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
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
                    ),
                  SizedBox(height: 8.0),
                  Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      width: double.infinity,
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
                  ),
                  Container(
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
                                widget.toggleView();
                              }
                          ),
                        ]
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                      width: double.infinity,
                      height: 20,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              "First Name *",
                              style: TextStyle(
                                fontSize: 15,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )
                          )
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,10,0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * (300/411.4),
                      height: MediaQuery.of(context).size.height * (80/683.4),
                      child: TextFormField(
                        validator: (String? val) {
                          if (val != null && val.isEmpty)
                          {
                            return "required *";
                          }
                          return null;
                        },
                          onChanged: (val)
                          {
                            setState(() => firstName = val);
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.white70,
                            filled: true,
                            border: OutlineInputBorder(),
                            errorStyle: TextStyle(color: Colors.white, height: .7),
                          ),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                      width: double.infinity,
                      height: 20,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              "Last Name *",
                              style: TextStyle(
                                fontSize: 15,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )
                          )
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,10,0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * (300/411.4),
                      height: MediaQuery.of(context).size.height * (80/683.4),
                      child: TextFormField(
                        validator: (String? val) {
                          if (val != null && val.isEmpty)
                          {
                            return "required *";
                          }
                          return null;
                          },
                        onChanged: (val)
                        {
                          setState(() => lastName = val);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white70,
                          filled: true,
                          errorStyle: TextStyle(color: Colors.white, height: .7),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                      width: double.infinity,
                      height: 20,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              "Member Status *",
                              style: TextStyle(
                                fontSize: 15,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                          ),
                      ),
                  ),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: statuses.map((status) {
                      return Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Radio(
                            fillColor: MaterialStateColor.resolveWith((states) => Colors.amber),
                            value: status,
                            groupValue: memberStatus,
                            onChanged: (String? val) {
                              setState(() {
                                memberStatus = val!;
                              });
                            },
                          ),
                          Text(
                              status,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ), // This will display the text alongside the Radio button.
                        ],
                      );
                    }).toList(),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                      width: double.infinity,
                      height: 20,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              "Email *",
                              style: TextStyle(
                                fontSize: 15,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )
                          )
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,10,0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * (300/411.4),
                      height: MediaQuery.of(context).size.height * (80/683.4),
                      child: TextFormField(
                        validator: (String? val) {
                          if (val != null && val.isEmpty || !val!.contains("@"))
                          {
                            return "Please Enter a valid email";
                          }
                            return null;
                          },
                        onChanged: (val)
                        {
                          setState(() => email = val);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white70,
                          filled: true,
                          border: OutlineInputBorder(),
                          errorStyle: TextStyle(color: Colors.white, height: .7),
                        ),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                      width: double.infinity,
                      height: 20,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              "Password *",
                              style: TextStyle(
                                fontSize: 15,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )
                          )
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,10,0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * (300/411.4),
                      height: MediaQuery.of(context).size.height * (80/683.4),
                      child: TextFormField(
                        validator: (String? val) {
                          if (val != null && val.length < 6)
                          {
                            return "Enter a password with 6+ characters.";
                          }
                          return null;
                        },
                        onChanged: (val)
                        {
                          setState(() => password = val);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white70,
                          filled: true,
                          border: OutlineInputBorder(),
                          errorStyle: TextStyle(color: Colors.white, height: .7),
                        ),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                      width: double.infinity,
                      height: 20,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              "Major *",
                              style: TextStyle(
                                fontSize: 15,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )
                          )
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,10,0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * (300/411.4),
                      height: MediaQuery.of(context).size.height * (80/683.4),
                      child: TextFormField(
                        validator: (String? val) {
                          if (val != null && val.isEmpty)
                          {
                            return "required *";
                          }
                          return null;
                        },
                        onChanged: (val)
                        {
                          setState(() => major = val);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white70,
                          filled: true,
                          border: OutlineInputBorder(),
                          errorStyle: TextStyle(color: Colors.white, height: .7),
                        ),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                      width: double.infinity,
                      height: 20,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              "Year *",
                              style: TextStyle(
                                fontSize: 15,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )
                          )
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,10,0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * (300/411.4),
                      height: MediaQuery.of(context).size.height * (80/683.4),
                      child: DropdownButtonFormField(
                        value: "Freshman",
                        decoration: InputDecoration(
                          fillColor: Colors.white70,
                          filled: true,
                          border: OutlineInputBorder(),
                          errorStyle: TextStyle(color: Colors.white, height: .7),
                        ),
                        items: years.map((year) {
                          return DropdownMenuItem(
                            value: year,
                            child: Text('$year'),
                          );
                        }).toList(),
                        onChanged: (val) => setState(() => year = val!),
                      ),
                    ),
                    ),
                  SizedBox(height: 30.0),
                  Align(
                    alignment: Alignment.center,
                    child: AmberSubmitButton(
                      message: "Sign Up!",
                      onTap: () async {
                        if (_formKey.currentState!.validate()) {
                          setState(() => loading = true);
                          dynamic result = await _authService.registerWithEmailAndPassword(
                              email, password, major, year, firstName, lastName, memberStatus);

                          if (result == null) {
                            setState(() {
                              error = "Please Supply a Proper Email";
                              loading = false;
                            });
                          }
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      error,
                      style: TextStyle(color: Colors.white, fontSize: 14.0),
                    ),
                  ),
                  SizedBox(height: 15.0,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}