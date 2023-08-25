import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpotlightPage6 extends StatefulWidget {
  const SpotlightPage6({super.key});

  @override
  State<SpotlightPage6> createState() => _SpotlightPage6State();
}

class _SpotlightPage6State extends State<SpotlightPage6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo.shade50,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xE31837).withOpacity(.5),
                Color(0xF4F0EE).withOpacity(.75),
                Color(0xF4F0EE).withOpacity(.75),
                Color(0xE31837).withOpacity(.5),
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
                              "assets/RahulRao.png",
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
                            "Rahul Rao",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.bangers(
                              fontSize: 40,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 50,
                          child: Text(
                            "Walgreens - Procurement",
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
                                'Unveiling Internship Insights: Seeking New Ways to Treat a Customer',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              SizedBox(height: 10.0), // Add spacing between title and content
                              Text(
                                "Pursuing an early start for internships, upcoming Sophomore Samantha Chin, saught out the opportunity to achieve further growth in areas such as public speaking and presentations.",
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
                                title: Text('Co-led a presentation committee which helped organize Lunch and Learn presentations for full-time employees '),
                              ),
                              ListTile(
                                leading: Icon(Icons.check_circle, color: Colors.green),
                                title: Text("Achieved enchanced communication and leadership skills."),
                              ),
                              ListTile(
                                leading: Icon(Icons.check_circle, color: Colors.green),
                                title: Text("Utilized Microsoft applications such as Sharepoint to make website pages."),
                              ),
                              // Add more list tiles for other points
                              // ...
                              SizedBox(height: 10.0), // Add spacing
                              Text(
                                "The tasks given by Blue Cross Blue Shield gave Samantha the perfect opportunity to perform using her Marketing major and Data Science minor.",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              SizedBox(height: 10.0), // Add final spacing
                              Text(
                                "In her free time, Samantha enjoys reading, watching and playing soccer, watching YouTube, and kayaking.",
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