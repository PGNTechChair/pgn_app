import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpotlightPage3 extends StatefulWidget {
  const SpotlightPage3({super.key});

  @override
  State<SpotlightPage3> createState() => _SpotlightPage3State();
}

class _SpotlightPage3State extends State<SpotlightPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo.shade50,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0x0099CC).withOpacity(.75),
                Color(0x8FCAE7).withOpacity(.5),
                Color(0x8FCAE7).withOpacity(.5),
                Color(0x0099CC).withOpacity(.75),
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
                              "assets/SamanthaChin.png",
                              width: MediaQuery.of(context).size.width- 100,
                              height: MediaQuery.of(context).size.width- 100,
                              fit: BoxFit.fill
                            ),
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * (1/32)),
                        Container(
                          width: MediaQuery.of(context).size.width - 50,
                          child: Text(
                            "Samantha Chin",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.bangers(
                              fontSize: 40,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 50,
                          child: Text(
                            "Blue Cross Blue Shield - Customer Experience",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.bangers(
                              fontSize: 24,
                            ),
                          ),
                        ),
                        Divider(
                            color: Colors.blue[700],
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