import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pgn_app/components/side_bar.dart';
import 'package:pgn_app/models/user.dart';
import 'package:pgn_app/pages/home/story1page.dart';
import 'package:pgn_app/pages/home/story2page.dart';
import 'package:pgn_app/pages/home/story3page.dart';
import 'package:pgn_app/pages/home/story4page.dart';
import 'package:pgn_app/services/database.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';


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

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget _cardMenu({
    required String title,
    required String icon,
    required double width,
    required double height,
    required double fontsize,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        constraints: BoxConstraints(maxHeight: height),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: LinearGradient(
            colors: [Colors.indigo[50]!, Colors.white70!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 10,
              blurRadius: 5,
              offset: Offset(0, 5),
            ),
          ],
          border: Border.all(
            color: Colors.amber[700]!,
            width: 10.0,
          ),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                icon,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    color: Colors.white.withOpacity(.8),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: fontsize,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF800000),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    String? uid = Provider.of<NewUser?>(context)?.uid;

    return StreamProvider<UserData?>.value(
      value: DatabaseService(uid: uid ?? '').userData,
      initialData: null,
      child: Scaffold(
        backgroundColor: Colors.indigo[50],
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
                        children: [
                          Row(
                            children: [
                              Container(
                                color: Colors.indigo[50],
                                width: MediaQuery.of(context).size.width * (1/5),
                                height: MediaQuery.of(context).size.height * (150/683.4),
                              ),
                              Container(
                                color: Colors.indigo[50],
                                width: MediaQuery.of(context).size.width * (3/5),
                                child: Center(
                                  child: Image.asset(
                                      'assets/pgn-logo.png',
                                    width: MediaQuery.of(context).size.width - 100,
                                    height: MediaQuery.of(context).size.height * (150/683.4)
                                  ),
                                ),
                              ),
                              Container(
                                color: Colors.indigo[50],
                                width: MediaQuery.of(context).size.width * (1/5),
                                height: MediaQuery.of(context).size.height * (150/683.4),
                              ),
                            ],
                          ),
                          SizedBox(height: 60),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _cardMenu(
                                onTap: () {
                                  Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => const StoryPage1(),
                                    ),
                                  );
                                },
                                title: "Why Join PGN?",
                                width: MediaQuery.of(context).size.width - 100,
                                height: MediaQuery.of(context).size.width - 100,
                                icon: "assets/StoryImage1.png",
                                  fontsize: 30
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _cardMenu(
                                  onTap: () {
                                    Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => const StoryPage2(),
                                      ),
                                    );
                                  },
                                  title: "Tips for Recruitment",
                                  width: MediaQuery.of(context).size.width - 100,
                                  height: MediaQuery.of(context).size.width - 100,
                                  icon: "assets/StoryImage2.png",
                                  fontsize: 28
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _cardMenu(
                                  onTap: () {
                                    Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => const StoryPage3(),
                                      ),
                                    );
                                  },
                                  title: "Member Internship Spotlight",
                                  width: MediaQuery.of(context).size.width - 100,
                                  height: MediaQuery.of(context).size.width - 100,
                                  icon: "assets/StoryImage3.png",
                                  fontsize: 24
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _cardMenu(
                                  onTap: () {
                                    Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => const StoryPage4(),
                                      ),
                                    );
                                  },
                                  title: "Watch Our Podcast",
                                  width: MediaQuery.of(context).size.width - 100,
                                  height: MediaQuery.of(context).size.width - 100,
                                  icon: "assets/StoryImage4.png",
                                  fontsize: 26
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          Container(
                            color: Colors.black,
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * (1/4),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Align(
                                alignment: FractionalOffset(.5 , .5),
                                child: Text(
                                  "PGN is a professional development organization for all majors…",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.varelaRound(
                                    color: Colors.amber[700],
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.black,
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * (1/4),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Align(
                                alignment: FractionalOffset(.5 , 0),
                                child: Text(
                                  "…that believes there are clear steps, training and support networks that can mitigate underemployment and unemployment risk, and prepare graduates for a lifetime of success.",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.varelaRound(
                                    color: Colors.amber[700],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * (1 / 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.indigo[50]!.withOpacity(0.8),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                                    child: Text(
                                      "Curious about learning more?",
                                      style: GoogleFonts.coiny(
                                        fontSize: 28,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  // Use Expanded widget to center the SVG assets vertically and distribute remaining space
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          onTap: () => _launchURL('https://www.instagram.com/pgnmsu'),
                                          child: SvgPicture.asset(
                                            'assets/instagram.svg',
                                            width: 40,
                                            height: 40,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () => _launchURL('https://www.linkedin.com/company/phigammanumsu'),
                                          child: SvgPicture.asset(
                                            'assets/linkedin.svg',
                                            width: 40,
                                            height: 40,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () => _launchURL('https://www.pgnleaders.org/msu'),
                                          child: SvgPicture.asset(
                                            'assets/website.svg',
                                            width: 40,
                                            height: 40,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
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

