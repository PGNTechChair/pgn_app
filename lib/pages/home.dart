import 'package:flutter/material.dart';
import 'package:pgn_app/controllers/AnimationAppearController.dart';
import 'package:pgn_app/models/member.dart';
import 'package:pgn_app/pages/settings_form.dart';
import 'package:pgn_app/services/auth.dart';
import 'package:pgn_app/services/database.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pgn_app/services/member_list.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {

    void _showSettingsPanel()
    {
      showModalBottomSheet(
          context: context,
          builder: (context)
          {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 60.0),
              child: SettingsForm(),
            );
          }
      );
    }

    return StreamProvider<List<Member?>>.value(
        value: DatabaseService(uid: '').pgnSnapshots,
        initialData: [],
        child: Scaffold(
          backgroundColor: Colors.brown[50],
          appBar: AppBar(
            title: Text("Home Screen"),
            backgroundColor: Colors.brown[400],
            elevation: 0.0,
            actions: <Widget>[
              ElevatedButton.icon(
                icon: Icon(Icons.person),
                onPressed: () async {
                  await _auth.signOut();
                },
                label: Text("Log Out"),
              ),
              ElevatedButton.icon(
                icon: Icon(Icons.settings),
                label: Text("Settings"),
                onPressed: () => _showSettingsPanel(),
              )
            ],
          ),
          body: MemberList(),
        ),
      );
    }
  }

