import 'package:flutter/material.dart';
import 'package:pgn_app/services/auth.dart';

class SideMenuTile extends StatelessWidget {

  final Icon iconName;
  final String sideMenuOption;

  const SideMenuTile({required this.iconName, required this.sideMenuOption});

  @override
  Widget build(BuildContext context) {

    final AuthService _auth = AuthService();

    if (sideMenuOption == "Sign Out")
    {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:18.0),
            child: Divider(
              color: Colors.white24,
              thickness: 1 ,
            ),
          ),
          ListTile(
              leading: iconName,
              title: Text(
                  sideMenuOption,
                  style: TextStyle(color: Colors.white),
              ),
              onTap: () async {
                await _auth.signOut();
              },
          ),
        ],
      );
    }
    else {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:18.0),
            child: Divider(
              color: Colors.white24,
              thickness: 1 ,
            ),
          ),
          ListTile(
              leading: iconName,
              title: Text(
                  sideMenuOption,
                  style: TextStyle(color: Colors.white)
              )
          ),
        ],
      );
    }


  }
}
