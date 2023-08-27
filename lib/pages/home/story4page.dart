import 'package:flutter/material.dart';
import 'package:flutter_circular_text/circular_text.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class StoryPage4 extends StatefulWidget {
  const StoryPage4({super.key});

  @override
  State<StoryPage4> createState() => _StoryPage4State();
}

class _StoryPage4State extends State<StoryPage4> {
  @override

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo.shade50,
        body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                  margin: const EdgeInsets.only(left: 24, right: 24, top: 18),
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
                          "Meet the Man Behind the Mic!",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.bangers(
                            fontSize: 50,
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
                          child: Image.asset(
                            "assets/DavidEnghauser.png",
                            width: MediaQuery.of(context).size.width- 100,
                            height: MediaQuery.of(context).size.width- 100,
                          ),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * (1/32)),
                      Container(
                        width: MediaQuery.of(context).size.width - 50,
                        child: Text(
                          "David Enghauser",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.bangers(
                            fontSize: 40,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 50,
                        child: Text(
                          "Fall 2023's Engagement Chair",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.bangers(
                            fontSize: 24,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * (1/4),
                        child: Image.asset(
                          "assets/ManBehindTheMicBackground.png",
                          width: MediaQuery.of(context).size.width- 100,
                          height: MediaQuery.of(context).size.width- 100,
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
                                'This upcoming fall, David will be a junior pursuing a major in Business Management with a minor in Sports Management. In his free time, David enjoys spending time playing video games, traveling, and hitting the gym.',
                                style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                '\nDavid has embraced the responsibility of being the engagement chair, driven by a desire to bring joy and serve as a positive role model. His dedication to making others laugh and to be inclusive for all is a driving force behind this decision.',
                                style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * (1/32)),
                      Column(
                        children: <Widget>[
                           ExpansionTile(
                            title: Text(
                                'David has several ideas for podcast topics that he wishes to pursue:',
                              style: GoogleFonts.playfairDisplay(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            children: <Widget>[
                              ListTile(
                                leading: Icon(Icons.directions_run, color: Colors.red,),
                                title: Text(
                                  'Providing essential information for pledges',
                                  style: GoogleFonts.playfairDisplay(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              ListTile(
                                leading: Icon(Icons.school, color: Colors.black,),
                                title: Text(
                                  'Engaging alumni as guest speakers',
                                  style: GoogleFonts.playfairDisplay(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              ListTile(
                                leading: Icon(Icons.sports_football, color: Colors.brown,),
                                title: Text(
                                  'Integrating his love of football through the iconic MSU vs. U of M game',
                                  style: GoogleFonts.playfairDisplay(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * (1/32)),
                      Card(
                        color: Colors.grey[200],
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'With his passion for new and creative podcast ideas, David is all geared up for an enriching semester ahead.',
                                style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "\n\nFollow the PGN Spotify to stay tuned with David's journey!",
                                style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * (1/32)),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green[600]!, width: 5),
                          borderRadius: BorderRadius.circular(24)
                        ),
                        child: GestureDetector(
                          onTap: () => _launchURL('https://open.spotify.com/show/1TxcNHV1pseRgwYAwrZC8J?si=ed6625d21818497f'),
                          child: FittedBox(
                            //fit: BoxFit.contain,
                            child: SvgPicture.asset(
                              'assets/spotify.svg',
                              width: (150/1080) * MediaQuery.of(context).size.width,
                              height: (150/1080) * MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * (1/64)),
                    ],
                  ),
              ),
            ),
        )
    );
  }
}


