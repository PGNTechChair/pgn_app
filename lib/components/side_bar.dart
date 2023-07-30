import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pgn_app/models/user.dart';
import 'package:provider/provider.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {

  @override
  Widget build(BuildContext context) {

    final userData = Provider.of<UserData?>(context);

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 288,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF8B0000), Color(0xFFB71C1C)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )
          ),
          child: SafeArea(
            child: Column (
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.amber[800],
                    child: Icon(Icons.person, color: Colors.white)
                  ),
                  title: Text(userData!.firstName)
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}
