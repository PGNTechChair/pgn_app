import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:pgn_app/models/user.dart";
import "package:pgn_app/services/database.dart";
import "package:pgn_app/shared/constants.dart";
import "package:pgn_app/shared/loading.dart";
import "package:provider/provider.dart";


class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final _formKey = GlobalKey<FormState>();
  final List<String> years = ['Freshman', 'Sophomore', 'Junior', 'Senior', 'Other'];

  // form values
  late String? _currentFirstName = '';
  late String? _currentLastName = '';
  late String? _currentMajor = '';
  late String? _currentYear = '';

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<NewUser>(context);

    return StreamBuilder<UserData>(
        stream: DatabaseService(uid: user.uid).userData,
        builder: (context, snapshot) {

          if (snapshot.hasData)
          {
            UserData? userData = snapshot.data;
            return Scaffold(
              body: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AppBar(
                        title: Text(
                          "Update PGN Settings",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        backgroundColor: Color(0xFF8B0000),
                        centerTitle: true,
                      ),
                      SizedBox(height: 30),
                      Container(
                          margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                          width: 100,
                          height: 20,
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                  "First Name",
                                  style: TextStyle(
                                    fontSize: 12,
                                    letterSpacing: 2.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  )
                              )
                          )
                      ),
                      Padding(
                        padding:const EdgeInsets.fromLTRB(10,0,10,0),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.0,
                          child: TextFormField(
                            cursorColor: Colors.amber,
                            initialValue: userData?.firstName,
                            decoration: textInputDecoration,
                            validator: (val) => val!.isEmpty ? "Please enter your first name" : null,
                            //onChanged: (val) => setState(() => _currentFirstName = val),
                            onChanged: (val) {
                              setState(() => _currentFirstName = val);
                            }
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                          width: 100,
                          height: 20,
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                  "Last Name",
                                  style: TextStyle(
                                    fontSize: 12,
                                    letterSpacing: 2.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  )
                              )
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10,0,10,0),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.0,
                          child: TextFormField(
                              initialValue: userData?.lastName,
                              decoration: textInputDecoration,
                              validator: (val) => val!.isEmpty ? "Please enter your last name" : null,
                              onChanged: (val) => setState(() => _currentLastName = val)
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                          width: 100,
                          height: 20,
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                  "Major",
                                  style: TextStyle(
                                    fontSize: 12,
                                    letterSpacing: 2.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  )
                              )
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10,0,10,0),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.0,
                          child: TextFormField(
                              initialValue: userData?.major,
                              decoration: textInputDecoration,
                              validator: (val) => val!.isEmpty ? "Please enter your major" : null,
                              onChanged: (val) => setState(() => _currentMajor = val)
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                          width: 100,
                          height: 20,
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                  "Year",
                                  style: TextStyle(
                                    fontSize: 12,
                                    letterSpacing: 2.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  )
                              )
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10,0,10,0),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.0,
                          child: DropdownButtonFormField(
                            value: userData?.year,
                            decoration: textInputDecoration,
                            items: years.map((year) {
                              return DropdownMenuItem(
                                value: year,
                                child: Text('$year'),
                              );
                            }).toList(),
                            onChanged: (val) => setState(() => _currentYear = val! ),
                          ),
                        ),
                      ),
                      SizedBox(height:20.0),
                      Container(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF8B0000)
                          ),
                          onPressed: () async
                          {
                            //TODO - Temporary fix, this needs to update correctly through the stream
                            if (_currentMajor == "")
                            {
                              _currentMajor = null;
                            }
                            if (_currentYear == "")
                            {
                              _currentYear = null;
                            }
                            if (_currentFirstName == "")
                            {
                              _currentFirstName = null;
                            }
                            if (_currentLastName == "")
                            {
                              _currentLastName = null;
                            }

                            if(_formKey.currentState!.validate())
                            {
                              await DatabaseService(uid: user.uid).updateUserData(
                                  _currentMajor ?? userData!.major,
                                  _currentYear ?? userData!.year,
                                  _currentFirstName ?? userData!.firstName,
                                  _currentLastName ?? userData!.lastName
                              );
                              if (mounted) Navigator.pop(context);
                            }
                          },
                          child: Text(
                            "Update",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }
          else
          {
            return Loading();
          }


        }
    );
  }
}

