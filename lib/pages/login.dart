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
            SizedBox(height: 80,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AnimAppear(delay: 250, child: Text("PGN Login", style: TextStyle(color: Colors.white, fontSize: 40),),),
                      SizedBox(height: 10,),
                      AnimAppear(delay: 400, child: Text("Welcome Back", style: TextStyle(color: Colors.white, fontSize: 18),)),
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
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
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
                                child: TextField(
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
                                child: TextField(
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
                        AnimAppear(delay: 375, child: Text("New User? Sign Up!", style: TextStyle(color: Colors.grey),)),
                        SizedBox(height: 40,),
                        AnimAppear(delay: 375, child: Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.amberAccent[700],
                          ),
                          child: Center(
                            child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          ),
                        )),
                        SizedBox(height: 50,),
                      ],
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