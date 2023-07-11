import "package:pgn_app/models/member.dart";
import 'package:flutter/material.dart';

class PgnTile extends StatelessWidget {

  final Member? member;
  PgnTile({required this.member});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.redAccent,
          ),
          title: Text('${member!.firstName} ${member!.lastName}'),
          subtitle: Text('Majors in ${member!.major} and is in their ${member!.year} year of college.'),
        ),
      )
    );
  }
}
