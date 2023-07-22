import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:pgn_app/models/user.dart";
import "package:pgn_app/services/database.dart";
import "package:pgn_app/shared/constants.dart";
import "package:provider/provider.dart";

class SettingsForm extends StatefulWidget {
  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {

  final _formKey = GlobalKey<FormState>();
  final List<String> years = ['Freshman', 'Sophomore', 'Junior', 'Senior', 'Other'];

  // form values
  late String? _currentFirstName = '';
  late String? _currentLastName = '';
  late String? _currentMajor = '';
  late String? _currentYear = "Other";

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<NewUser>(context);

    return StreamBuilder<UserData>(
      stream: DatabaseService(uid: user.uid).userData,
      builder: (context, snapshot) {

        if (snapshot.hasData)
        {
          UserData? userData = snapshot.data;
          return Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Text(
                  "Update PGN Settings.",
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(height: 20),
                TextFormField(
                    initialValue: userData?.firstName,
                    decoration: textInputDecoration,
                    validator: (val) => val!.isEmpty ? "Please enter your first name" : null,
                    onChanged: (val) => setState(() => _currentFirstName = val)
                ),
                SizedBox(height: 20.0),
                TextFormField(
                    decoration: textInputDecoration,
                    validator: (val) => val!.isEmpty ? "Please enter your last name" : null,
                    onChanged: (val) => setState(() => _currentLastName = val)
                ),
                SizedBox(height: 20.0),
                TextFormField(
                    decoration: textInputDecoration,
                    validator: (val) => val!.isEmpty ? "Please enter your major" : null,
                    onChanged: (val) => setState(() => _currentMajor = val)
                ),
                SizedBox(height: 20.0),
                //dropdown
                DropdownButtonFormField(
                  value: _currentYear ?? userData?.year,
                  decoration: textInputDecoration,
                  items: years.map((year) {
                    return DropdownMenuItem(
                      value: year,
                      child: Text('$year'),
                    );
                  }).toList(),
                  onChanged: (val) => setState(() => _currentYear = val! ),
                ),
                //slider
                ElevatedButton(
                  onPressed: () async
                  {
                    print(_currentFirstName);
                    print(_currentLastName);
                    print(_currentMajor);
                    print(_currentYear);
                  },
                  child: Text(
                    "Update",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          );
        }
        else
        {
          return Text("No");
        }


      }
    );
  }
}