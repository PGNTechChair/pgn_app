import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pgn_app/controllers/AnimationAppearController.dart';
import 'package:pgn_app/shared/ambersubmitbutton.dart';
import 'package:pgn_app/services/auth.dart';


class Login extends StatefulWidget {

  late final Function toggleView;

  Login({required this.toggleView});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final AuthService _authService = AuthService();
  final _formKey = GlobalKey<FormState>();


  // text field state
  String email = '';
  String password = '';
  String error = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Color.fromARGB(255, 128, 0, 0),
                  Color.fromARGB(255, 196, 32, 10),
                  Color.fromARGB(255, 178, 95, 1),
                ]
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AnimAppear(delay: 250, child: Text("PGN Login", style: TextStyle(color: Colors.white, fontSize: 40),),),
                      SizedBox(height: 10,),
                      AnimAppear(delay: 400, child: Text("Welcome Back!", style: TextStyle(color: Colors.white, fontSize: 18),)),
                    ],
                  ),
                  SizedBox(width: 30.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AnimAppear(
                        delay: 500,
                        child: Image(
                          image: AssetImage('assets/sparty.png'),
                          height: 150,
                          width: 150,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)
                    ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.white.withOpacity(.5),
                      Colors.white
                    ],
                    stops: [0,.05,.1],
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 60,),
                          AnimAppear(delay: 400, child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [BoxShadow(
                                    color: Color.fromRGBO(225, 95, 27, .3),
                                    blurRadius: 20,
                                    offset: Offset(0, 10)
                                )]
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey))
                                  ),
                                  child: TextFormField(
                                    validator: (String? val) {
                                      if (val != null && val.isEmpty)
                                      {
                                        return "Please Enter an Email";
                                      }
                                      return null;
                                    },
                                    onChanged: (val)
                                    {
                                      setState(() => email = val);
                                    },
                                    decoration: InputDecoration(
                                        hintText: "Email",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey))
                                  ),
                                  child: TextFormField(
                                    validator: (String? val) {
                                      if (val != null && val.length < 6)
                                      {
                                        return "Please Enter a Valid Password.";
                                      }
                                      return null;
                                    },
                                    onChanged: (val)
                                    {
                                      setState(() => password = val);
                                    },
                                    decoration: InputDecoration(
                                        hintText: "Password",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                          SizedBox(height: 40,),
                          AnimAppear(
                            delay: 375,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: RichText(
                                text: TextSpan(
                                  text: "New User? ",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                  children: <TextSpan> [
                                    TextSpan(
                                      text: "Sign Up!",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
                                        decoration: TextDecoration.underline,
                                        decorationThickness: 2.0,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          widget.toggleView();
                                          // Navigator.pushNamed(context, '/signup');
                                        }
                                      ),
                                    ]
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 40,),
                          AnimAppear(delay: 375,
                            child: Align(
                            alignment: Alignment.center,
                              child: AmberSubmitButton(
                                message: "Login!",
                                onTap: () async
                                {
                                  if (_formKey.currentState!.validate())
                                  {
                                    dynamic result = await _authService.signInWithEmailAndPassword(email, password);
                                    print(result);
                                    if (result == null)
                                    {

                                      setState(() => error = "Could not sign in with invalid credentials.");
                                    }

                                  }
                                },
                              ),
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              error,
                              style: TextStyle(color: Colors.black, fontSize: 14.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}