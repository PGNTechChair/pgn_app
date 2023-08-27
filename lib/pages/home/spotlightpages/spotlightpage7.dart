import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpotlightPage7 extends StatefulWidget {
  const SpotlightPage7({super.key});

  @override
  State<SpotlightPage7> createState() => _SpotlightPage7State();
}

class _SpotlightPage7State extends State<SpotlightPage7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo.shade50,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0x007DB8).withOpacity(.75),
                Color(0xffffff).withOpacity(.5),
                Color(0x007DB8).withOpacity(.75),
                Color(0xffffff).withOpacity(.5),
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
                                child: const Icon(Icons.arrow_back_ios, color: Colors.red)
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
                              "assets/ShreyaParepally.png",
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
                            "Shreya Parepally",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.bangers(
                              fontSize: 40,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 50,
                          child: Text(
                            "HALOCK Security Labs - Cybersecurity Consultant",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.bangers(
                              fontSize: 24,
                            ),
                          ),
                        ),
                        Divider(
                            color: Colors.blue[900],
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
                                'Unveiling Internship Insights: Protecting the City One Client at a Time',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              SizedBox(height: 10.0), // Add spacing between title and content
                              Text(
                                "With the rising occurence of cyber crimes, the city of Schaumburg needed a hero... One to fight off the criminals of the web. Shreya has risen to this challenge and fights for the businesses around her to keep them safe and functional!",
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
                                title: Text("Consulted with several small businesses about best security practices"),
                              ),
                              ListTile(
                                leading: Icon(Icons.check_circle, color: Colors.green),
                                title: Text("Sent out phishing emails to employees of the company to test the awareness of the staff regarding scam emails."),
                              ),
                              ListTile(
                                leading: Icon(Icons.check_circle, color: Colors.green),
                                title: Text("Shadowed different positions of the company to broaden her view of the company's direction"),
                              ),
                              // Add more list tiles for other points
                              // ...
                              SizedBox(height: 10.0), // Add spacing
                              Text(
                                "Shreya sparked her interest of cybersecurity during the pandemic and found joy in the field. She has since started her degree in Computer Science and will be a rising Sophomore.",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              SizedBox(height: 10.0), // Add final spacing
                              Text(
                                "When there is time to spare, Shreya enjoys making websites, drawing art, and to get outside and play some games of pickelball.",
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