import 'package:flutter/material.dart';
import 'package:pgn_app/components/side_bar.dart';
import 'package:pgn_app/models/user.dart';
import 'package:pgn_app/services/auth.dart';
import 'package:pgn_app/services/database.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  bool isSidebarOpen = false;

  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 750),
    );

    _slideAnimation = Tween<Offset>(
      begin: Offset(-1, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    ));
  }

  void toggleSidebar() {
    setState(() {
      isSidebarOpen = !isSidebarOpen;
      if (isSidebarOpen) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String? uid = Provider.of<NewUser?>(context)?.uid;

    return StreamProvider<UserData?>.value(
      value: DatabaseService(uid: uid ?? '').userData,
      initialData: null,
      child: Scaffold(
        backgroundColor: Colors.red[100],
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber[700],
          mini: true,
          child: Icon(Icons.menu),
          onPressed: toggleSidebar,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 18, left: 24, right: 24),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        children: [
                          SizedBox(height:32),
                          Center(
                            child: Image.asset(
                                'assets/pgn-logo.png',
                              scale: 1.2,
                            ),
                          ),
                          SizedBox(height: 16),
                          Center(
                            child: Text(
                                "Welcome!",
                                style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              if (isSidebarOpen)
                GestureDetector(
                  onTap: toggleSidebar,
                  child: Container(
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
                SlideTransition(
                  position: _slideAnimation,
                  child: SideBar(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
