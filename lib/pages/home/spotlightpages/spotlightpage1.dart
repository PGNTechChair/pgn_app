import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpotlightPage1 extends StatefulWidget {
  const SpotlightPage1({super.key});

  @override
  State<SpotlightPage1> createState() => _SpotlightPage1State();
}

class _SpotlightPage1State extends State<SpotlightPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF0078D4).withOpacity(.5),
                Color(0xFFFFFF00).withOpacity(.5),
                Color(0xFFD83B01).withOpacity(.5),
                Color(0xFF00A859).withOpacity(.5),
              ],
              stops:[0.2,0.4,0.6,.8],
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
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 5),
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Image.asset(
                            "assets/ShreyaPeddi.png",
                            width: MediaQuery.of(context).size.width - 100,
                            height: MediaQuery.of(context).size.width - 100,
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * (1/32)),
                        Container(
                          width: MediaQuery.of(context).size.width - 50,
                          child: Text(
                            "Shreya Peddi",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.bangers(
                              fontSize: 40,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 50,
                          child: Text(
                            "Microsoft - Operations",
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
                                'Unveiling Internship Insights: A Senior\'s Stint at Microsoft',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              SizedBox(height: 10.0), // Add spacing between title and content
                              Text(
                                'Embarking on a senior year journey as a Supply Chain major with minors in Data Science and Sustainability, this individual\'s internship narrative intertwines professional growth with personal passions.',
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
                                title: Text(
                                    'Became technically skilled with several Microsoft applications and earned multiple certifications',
                                  style: TextStyle(fontSize: 15)
                                ),
                              ),
                              ListTile(
                                leading: Icon(Icons.check_circle, color: Colors.green),
                                title: Text("Organized events such as an intern pickelball tournament and was a leader in Microsoft's GLEAM program",
                                    style: TextStyle(fontSize: 15)
                                ),
                              ),
                              // Add more list tiles for other points
                              // ...
                              SizedBox(height: 10.0), // Add spacing
                              Text(
                                'Microsoft\'s internship not only honed skills but also fostered resilience for the corporate journey ahead.',
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              SizedBox(height: 10.0), // Add final spacing
                              Text(
                                "Upon request, Shreya's responses were summarized with ChatGPT.",
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