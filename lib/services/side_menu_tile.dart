import 'package:flutter/material.dart';
import 'package:pgn_app/services/auth.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenuTile extends StatelessWidget {

  final Icon iconName;
  final String sideMenuOption;

  const SideMenuTile({required this.iconName, required this.sideMenuOption});

  @override
  Widget build(BuildContext context) {

    void _launchPgnWebsite() async {
      const url = 'https://www.pgnleaders.org/msu';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

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

    else if (sideMenuOption == "PGN Website")
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
            onTap: _launchPgnWebsite,
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
