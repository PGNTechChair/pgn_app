import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pgn_app/models/member.dart';
import 'package:pgn_app/models/user.dart';
import 'package:pgn_app/services/pgn_tile.dart';
import 'package:pgn_app/shared/loading.dart';
import 'package:provider/provider.dart';

class UserInformation extends StatefulWidget {

  @override
  State<UserInformation> createState() => _UserInformationState();
}

class _UserInformationState extends State<UserInformation> {
  @override
  Widget build(BuildContext context) {

    final member = Provider.of<UserData?>(context);

    if (member == null) {

      // Return a widget indicating that the user data is not available (user not logged in or data not fetched).
      return Loading();
    }


    // Display the member's profile.
    return PgnTile(member: member);
  }
}