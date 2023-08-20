import 'package:flutter/material.dart';
import 'package:pgn_app/components/side_bar.dart';
import 'package:pgn_app/models/user.dart';
import 'package:pgn_app/services/auth.dart';
import 'package:pgn_app/services/database.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';


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
        backgroundColor: Colors.white,
        floatingActionButton: Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: FloatingActionButton(
              backgroundColor: Colors.amber[700],
              mini: true,
              child: Icon(Icons.menu),
              onPressed: toggleSidebar,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
        body: SafeArea(
          child: Stack(
            children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/themebackground.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                //margin: const EdgeInsets.only(top: 18, left: 24, right: 24),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 20,
                                color: Colors.white,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                color: Colors.white,
                                width: MediaQuery.of(context).size.width * (1/5),
                                height: 150,
                              ),
                              Container(
                                color: Colors.white,
                                width: MediaQuery.of(context).size.width * (3/5),
                                child: Center(
                                  child: Image.asset(
                                      'assets/pgn-logo.png',
                                    width: MediaQuery.of(context).size.width - 100,
                                    height: 150
                                  ),
                                ),
                              ),
                              Container(
                                color: Colors.white,
                                width: MediaQuery.of(context).size.width * (1/5),
                                height: 150,
                              ),
                            ],
                          ),
                          SizedBox(height: 60),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _cardMenu(
                                  title: "Why Rush PGN?",
                                  width: MediaQuery.of(context).size.width - 100,
                                  height: MediaQuery.of(context).size.width - 100,
                                  icon: "assets/placeholderimage1.png"
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _cardMenu(
                                  title: "Tips for Rushees",
                                  width: MediaQuery.of(context).size.width - 100,
                                  height: MediaQuery.of(context).size.width - 100,
                                  icon: "assets/placeholderimage2.png"
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _cardMenu(
                                  title: "Member Internship Spotlight",
                                  width: MediaQuery.of(context).size.width - 100,
                                  height: MediaQuery.of(context).size.width - 100,
                                  icon: "assets/placeholderimage3.png"
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _cardMenu(
                                  title: "Watch Our Podcast!",
                                  width: MediaQuery.of(context).size.width - 100,
                                  height: MediaQuery.of(context).size.width - 100,
                                  icon: "assets/placeholderimage4.png"
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
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


Widget _cardMenu({
  required String title,
  required String icon,
  required double width,
  required double height,
  VoidCallback? onTap,
  Color fontColor = Colors.red,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.only(bottom: 10, top: 18),
      width: width,
      height: height,
      constraints: BoxConstraints(maxHeight: height),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.grey[100],
      ),
      child: ListView(
        children: [
          Image.asset(icon, width: width / 2, height: height / 2),
          SizedBox(height: height / 8),
          Text(
            textAlign: TextAlign.center,
            title,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: fontColor
            ),
          ),
        ],
      ),
    ),
  );
}