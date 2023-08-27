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
  final List<String> years = ['Freshman', 'Sophomore', 'Junior', 'Senior'];

  // form values
  late String? _currentFirstName = '';
  late String? _currentLastName = '';
  late String? _currentMajor = '';
  late String? _currentYear = '';
  late String? _currentPhoneNumber = '';
  late String? _currentAddress = '';
  late String? _currentEmail = '';

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
              backgroundColor: Colors.grey[300],
              appBar: AppBar(
                title: Text(
                  "Settings",
                  style: TextStyle(fontSize: 18.0),
                ),
                backgroundColor: Color(0xFF8B0000),
                centerTitle: true,
              ),
              body: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 10),
                        child: Container(
                          child: Text(
                              "Personal Information",
                            style: TextStyle(
                              color: Color(0xFF8B0000),
                              fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                      ),
                      CardWithLabel(
                        label: "First Name",
                        icon: Icon(Icons.person),
                        child: TextFormField(
                          cursorColor: Colors.amber,
                          initialValue: userData?.firstName,
                          decoration: textInputDecoration,
                          validator: (val) =>
                          val!.isEmpty ? "Please enter your first name" : null,
                          onChanged: (val) {
                            setState(() => _currentFirstName = val);
                          },
                        ),
                      ),
                      CardWithLabel(
                        label: "Last Name",
                        icon: Icon(Icons.person),
                        child: TextFormField(
                          cursorColor: Colors.amber,
                          initialValue: userData?.lastName,
                          decoration: textInputDecoration,
                          validator: (val) =>
                          val!.isEmpty ? "Please enter your last name" : null,
                          onChanged: (val) => setState(() => _currentLastName = val),
                        ),
                      ),
                      CardWithLabel(
                        label: "Phone Number",
                        icon: Icon(Icons.phone),
                        child: TextFormField(
                          cursorColor: Colors.amber,
                          initialValue: userData?.phoneNumber,
                          decoration: textInputDecoration,
                          validator: (val) =>
                          val!.isEmpty ? "Please enter your last name" : null,
                          onChanged: (val) => setState(() => _currentPhoneNumber = val),
                        ),
                      ),
                      CardWithLabel(
                        label: "Address",
                        icon: Icon(Icons.home),
                        child: TextFormField(
                          cursorColor: Colors.amber,
                          initialValue: userData?.address,
                          decoration: textInputDecoration,
                          validator: (val) =>
                          val!.isEmpty ? "Please enter your last name" : null,
                          onChanged: (val) => setState(() => _currentAddress = val),
                        ),
                      ),
                      CardWithLabel(
                        label: "Major",
                        icon: Icon(Icons.school),
                        child: TextFormField(
                          cursorColor: Colors.amber,
                          initialValue: userData?.major,
                          decoration: textInputDecoration,
                          validator: (val) => val!.isEmpty ? "Please enter your major" : null,
                          onChanged: (val) => setState(() => _currentMajor = val),
                        ),
                      ),
                      CardWithLabel(
                        label: "Year",
                        icon: Icon(Icons.calendar_today),
                        child: DropdownButtonFormField(
                          value: userData?.year,
                          decoration: textInputDecoration,
                          items: years.map((year) {
                            return DropdownMenuItem(
                              value: year,
                              child: Text('$year'),
                            );
                          }).toList(),
                          onChanged: (val) => setState(() => _currentYear = val!),
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
                            if (_currentPhoneNumber == "")
                            {
                              _currentPhoneNumber = null;
                            }
                            if (_currentAddress == "")
                            {
                              _currentAddress = null;
                            }

                            if(_formKey.currentState!.validate())
                            {
                              await DatabaseService(uid: user.uid).updateUserData(
                                  _currentMajor ?? userData!.major,
                                  _currentYear ?? userData!.year,
                                  _currentFirstName ?? userData!.firstName,
                                  _currentLastName ?? userData!.lastName,
                                  _currentPhoneNumber ?? userData!.phoneNumber,
                                  _currentAddress ?? userData!.address,
                                  userData!.memberStatus ?? ''
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


class CardWithLabel extends StatelessWidget {
  final String label;
  final Widget child;
  final Widget icon;

  const CardWithLabel({required this.label, required this.child, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            icon,
            SizedBox(width: 16),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    label,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 16), // Add some spacing between the label and the child
            Expanded(
              flex: 3,
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}


