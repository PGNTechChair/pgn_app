import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> with SingleTickerProviderStateMixin{

  late AnimationController _controller;
  int _currentIndex = 0;
  List<String> _imagePaths = [
    "assets/BrotherReveal1.png",
    "assets/BrotherReveal2.png",
    "assets/BrotherReveal3.png",
    "assets/BrotherReveal4.png",
    "assets/BrotherReveal5.png",
    "assets/BrotherReveal6.png",
    "assets/BrotherReveal7.png",
    "assets/BrotherReveal8.png",
    "assets/BrotherReveal9.png",
    "assets/BrotherReveal10.png",
    "assets/BrotherReveal11.png",
    "assets/BrotherReveal12.png",
    "assets/BrotherReveal13.png",
    "assets/BrotherReveal14.png",
    "assets/BrotherReveal15.png",
    "assets/BrotherReveal16.png",
    "assets/BrotherReveal17.png",
    "assets/BrotherReveal18.png",
    "assets/BrotherReveal19.png",
    "assets/BrotherReveal20.png",

  ];

  List<ImageProvider> _imageProviders = [];

  @override
  void initState() {
    super.initState();

    for (String path in _imagePaths) {
      _imageProviders.add(AssetImage(path));
    }

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 30),
    )..addListener(() {
      setState(() {
        // Update the current index based on animation value
        _currentIndex = (_controller.value * _imagePaths.length).floor();
      });
    })..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo.shade50,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              margin: const EdgeInsets.only(top: 18, left: 24, right: 24),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(Icons.arrow_back_ios, color: Colors.red)
                    )
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 1/32),
                Container(
                  width: MediaQuery.of(context).size.width - 100,
                  child: Text(
                    "Thriving Through Kaizen, Together",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.bangers(
                      fontSize: 50,
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 1/32),
                Card(
                  color: Colors.grey[200],
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'PGN hones many amazing aspects regarding the organization, but above all we seek to foster a welcoming community.',
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '\nIf you are new here, you may be wondering what "Kaizen" means. Kaizen is a combination of two Japanese words that translates to "continuous improvement". PGN has integrated this term into our daily culture as with every opportunity, we strive to encourage each other to take our next steps whether if it\'s professionally or through life\'s many challenges!',
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 1/32),
                Container(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 5), // Inner gold border
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: AnimatedBuilder(
                      animation: _controller,
                      builder: (context, child) {
                        return Image(
                          image: _imageProviders[_currentIndex],
                          width: MediaQuery.of(context).size.width - 100,
                          height: MediaQuery.of(context).size.width - 100,
                        );
                      }
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * (1/4),
                  height: MediaQuery.of(context).size.height * (1/6),
                  child: Image.asset(
                    "assets/WhiteToothShrew.png",
                  ),
                ),
                Card(
                  color: Colors.grey[200],
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Every semester, pledges get initiated into one of the many families that reside within the organization. Above is our White Tooth Shrew family (Jeremy Kim, Luke Boldman, & Neel Chandran) welcoming two new members (Matt Welmerink & Victoria Nweze) alongside to the future development of their family. These families serve as sub-communities to help brothers grow closer to one another through PGN events or through their own means.",
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '\nThe PGN emphasis on community doesn\'t just reside in the meeting room, but also in the Minskoff Pavilion, outside at MSU events, and even after graduation where we aim to stay tightly connected with our alumni. PGN aspires to create a journey for its members that lasts a lifetime.',
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 1/32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
