import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String name;
  final String userStatus;

  const InfoCard({required this.name, required this.userStatus});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
          backgroundColor: Colors.amber[800],
          child: Icon(Icons.person, color: Colors.white)
      ),
      title: Text(name, style: TextStyle(color: Colors.white)),
      //TODO - Add field in registration that tells if user is member or not
      subtitle: Text(userStatus, style: TextStyle(color: Colors.white)),
    );
  }
}