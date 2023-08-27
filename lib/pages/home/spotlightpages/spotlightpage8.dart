import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpotlightPage8 extends StatefulWidget {
  const SpotlightPage8({super.key});

  @override
  State<SpotlightPage8> createState() => _SpotlightPage8State();
}

class _SpotlightPage8State extends State<SpotlightPage8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo.shade50,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xCC0000).withOpacity(.5),
                Color(0xffffff).withOpacity(.75),
                Color(0xCC0000).withOpacity(.5),
                Color(0xffffff).withOpacity(.75),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SingleChildScrollView(
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
                                child: Icon(Icons.arrow_back_ios, color: Colors.black)
                            )
                          ],
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 1/16),
                        Container(
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black, width: 5),
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: Image.asset(
                              "assets/JackieLeeLogo.png",
                              width: MediaQuery.of(context).size.width- 100,
                              height: MediaQuery.of(context).size.width- 100,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * (1/32)),
                        Container(
                          width: MediaQuery.of(context).size.width - 50,
                          child: Text(
                            "Jackie Lee",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.bangers(
                              fontSize: 40,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 50,
                          child: Text(
                            "Target - Operations",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.bangers(
                              fontSize: 24,
                            ),
                          ),
                        ),
                        Divider(
                            color: Colors.red[700],
                            thickness: 2.0,
                            height: 20.0
                        ),
                        Container(
                          margin: EdgeInsets.all(10.0),
                          padding: EdgeInsets.all(20.0), // Adjust padding for content spacing
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100, // Container background color
                            border: Border.all(
                              color: Colors.amber[700]!,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(10.0), // Rounded corners
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Unveiling Internship Insights: Hitting the Bullseye for Quality Execution',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              SizedBox(height: 10.0), // Add spacing between title and content
                              Text(
                                "Jackie transferred her leadership skills from being the VP of Membership to her internship with Target. A lot of her work involved strategic planning which she was already well prepped for due to her fruitful efforts these past couple years at MSU.",
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(height: 10.0), // Add spacing between paragraphs
                              Text(
                                'Highlights:',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              ListTile(
                                leading: Icon(Icons.check_circle, color: Colors.green),
                                title: Text('Performed data analytics to seek company insights'),
                              ),
                              ListTile(
                                leading: Icon(Icons.check_circle, color: Colors.green),
                                title: Text("Utilized GEMBA to improve processes of Target deliveries"),
                              ),
                              ListTile(
                                leading: Icon(Icons.check_circle, color: Colors.green),
                                title: Text("Collaborated in large teams to efficiently finish her intern project"),
                              ),
                              SizedBox(height: 10.0), // Add spacing
                              Text(
                                "Jackie has continuously been inspired to challenge herself. Target is just one more example of Jackie pushing past her previous limits.",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              SizedBox(height: 10.0), // Add final spacing
                              Text(
                                "Outside of her leadership duties, Jackie loves to play video games with friends and spend time with her family.",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * (1/16)),
                      ],
                    )
                )
            ),
          ),
        )
    );
  }
}