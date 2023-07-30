import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pgn_app/models/user.dart';
import 'package:pgn_app/shared/loading.dart';
import 'package:provider/provider.dart';
import 'package:pgn_app/services/info_card.dart';
import 'package:rive/rive.dart' as rive;
import "package:pgn_app/services/side_menu_tile.dart";

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userData = Provider.of<UserData?>(context);

    return FutureBuilder<UserData?>(
      future: Future.value(userData), // Convert UserData? to Future<UserData?>
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // While waiting for data, you can show a loading indicator
          return Loading();
        } else if (snapshot.hasError) {
          // If there's an error in fetching data, you can handle it here
          return Text('Error: ${snapshot.error}');
        } else {
          // If data is available, you can access it using 'snapshot.data'
          UserData? userData = snapshot.data;

          if (userData == null) {
            // Handle the case where 'userData' is null (optional)
            return Text('No user data available.');
          }

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
                    ),
                ),
                child: SafeArea(
                  child: Column(
                    children: [
                      InfoCard(name: userData.firstName, userStatus: "Placeholder for user status."),
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0, bottom: 16.0),
                        child: Text(
                            "Browse".toUpperCase(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                            )
                        ),
                      ),
                      SideMenuTile(),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}

