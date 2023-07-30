import 'package:flutter/material.dart';
import 'package:pgn_app/components/side_bar.dart';
import 'package:pgn_app/models/user.dart';
import 'package:pgn_app/pages/settings_form.dart';
import 'package:pgn_app/services/auth.dart';
import 'package:pgn_app/services/database.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthService _auth = AuthService();
  bool isSidebarOpen = false;

  void toggleSidebar() {
    setState(() {
      isSidebarOpen = !isSidebarOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    String? uid = Provider.of<NewUser?>(context)?.uid;

    return StreamProvider<UserData?>.value(
      value: DatabaseService(uid: uid ?? '').userData,
      initialData: null,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber[700],
          mini: true,
          child: Icon(Icons.menu),
          onPressed: toggleSidebar,
        ),
        // Position the FloatingActionButton in the top-left corner
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        // Add the Sidebar widget inside a Stack to overlay it when it's open
        body: Stack(
          children: [
            // Main content of the page goes here
            // You can replace SideBar() with your main content widget
            Center(
              child: Text('Your Main Content'),
            ),
            if (isSidebarOpen) SideBar(),
          ],
        ),
      ),
    );
  }
}
