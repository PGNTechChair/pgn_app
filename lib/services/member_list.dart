import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pgn_app/models/member.dart';
import 'package:pgn_app/services/pgn_tile.dart';
import 'package:provider/provider.dart';

class MemberList extends StatefulWidget {

  @override
  State<MemberList> createState() => _MemberListState();
}

class _MemberListState extends State<MemberList> {
  @override
  Widget build(BuildContext context) {

    final memberInfo = Provider.of<List<Member?>>(context) ?? [];

    // if (memberInfo != null) {
    //   memberInfo.forEach((member) {
    //     print(member!.firstName);
    //     print(member!.lastName);
    //     print(member!.major);
    //     print(member!.year);
    //   });
    // }




    return ListView.builder(
      itemCount: memberInfo.length,
      itemBuilder: (context, index) {
        return PgnTile(member: memberInfo[index]);
      },

    );
  }
}
