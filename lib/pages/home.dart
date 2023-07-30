import 'package:flutter/material.dart';
import 'package:pgn_app/components/side_bar.dart';
import 'package:pgn_app/controllers/AnimationAppearController.dart';
import 'package:pgn_app/models/member.dart';
import 'package:pgn_app/models/user.dart';
import 'package:pgn_app/pages/settings_form.dart';
import 'package:pgn_app/services/auth.dart';
import 'package:pgn_app/services/database.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pgn_app/services/user_information.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {

    String? uid = Provider.of<NewUser?>(context)?.uid;

    //final member = Provider.of<UserData?>(context);

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

    return StreamProvider<UserData?>.value(
      value: DatabaseService(uid: uid ?? '').userData,
      initialData: null,
      child: Scaffold(
        body: SideBar(),
      ),
    );
  }
}