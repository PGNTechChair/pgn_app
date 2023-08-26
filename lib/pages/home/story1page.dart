import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pgn_app/pages/home/reasonspages/community.dart';
import 'package:pgn_app/pages/home/reasonspages/networking.dart';
import 'package:pgn_app/pages/home/reasonspages/philanthropy.dart';
import 'package:pgn_app/pages/home/reasonspages/professional.dart';
import 'package:pgn_app/pages/home/reasonspages/social.dart';

class StoryPage1 extends StatefulWidget {
  const StoryPage1({super.key});

  @override
  State<StoryPage1> createState() => _StoryPage1State();
}

class _StoryPage1State extends State<StoryPage1> {
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
                  SizedBox(height: MediaQuery.of(context).size.height * 1/16),
                  Container(
                    width: MediaQuery.of(context).size.width - 100,
                    child: Text(
                      "We Have Our Reasons...",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.bangers(
                        fontSize: 70,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 1/32),
                  Container(
                    width: MediaQuery.of(context).size.width - 100,
                    child: Text(
                      "Click a Picture Below to Find Out About Them",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.bangers(
                        fontSize: 24,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * (1/16)),
                  Container(
                    width: MediaQuery.of(context).size.width- 100,
                    child: Text(
                        "Professional",
                      style: GoogleFonts.montserrat(
                        color: Colors.red[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * (1/128)),
                  GestureDetector(
                    onTap: () {
                      // Navigate to a new page here
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Professional(), // Replace NewPage with your actual page
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.red[700]!, width: 3), // Inner gold border
                          borderRadius: BorderRadius.circular(5)
                      ),
                      width: MediaQuery.of(context).size.width- 100,
                      child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Image.asset(
                          "assets/ProfessionalSection.png",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * (1/16)),
                  Container(
                    width: MediaQuery.of(context).size.width- 100,
                    child: Text(
                      "Social",
                      style: GoogleFonts.montserrat(
                        color: Colors.blue[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * (1/128)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Social(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue[700]!, width: 3),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      width: MediaQuery.of(context).size.width- 100,
                      child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Image.asset(
                          "assets/SocialSection.png",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * (1/16)),
                  Container(
                    width: MediaQuery.of(context).size.width- 100,
                    child: Text(
                      "Philanthropy",
                      style: GoogleFonts.montserrat(
                        color: Colors.purple[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * (1/128)),
                  GestureDetector(
                    onTap: () {
                      // Navigate to a new page here
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Philanthropy(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple[700]!, width: 3),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      width: MediaQuery.of(context).size.width- 100,
                      child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Image.asset(
                          "assets/PhilanthropySection.png",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * (1/16)),
                  Container(
                    width: MediaQuery.of(context).size.width- 100,
                    child: Text(
                      "Networking",
                      style: GoogleFonts.montserrat(
                        color: Colors.green[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * (1/128)),
                  GestureDetector(
                    onTap: () {
                      // Navigate to a new page here
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Networking(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.green[900]!, width: 3),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      width: MediaQuery.of(context).size.width- 100,
                      child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Image.asset(
                          "assets/NetworkingSection.png",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * (1/16)),
                  Container(
                    width: MediaQuery.of(context).size.width- 100,
                    child: Text(
                      "Community",
                      style: GoogleFonts.montserrat(
                        color: Colors.amber[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * (1/128)),
                  GestureDetector(
                    onTap: () {
                      // Navigate to a new page here
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Community(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.amber[900]!, width: 3),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      width: MediaQuery.of(context).size.width - 100,
                      child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Image.asset(
                          "assets/CommunitySection.png",
                        ),
                      ),
                    ),
                  ),
                  Divider(
                      color: Colors.indigo[200],
                      thickness: 2.0,
                      height: MediaQuery.of(context).size.height * (1/8)
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 100,
                    child: Text(
                      "A Statement From Our President",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.bangers(
                        fontSize: 36,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * (1/32)),
                  Container(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 5), // Inner gold border
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Image.asset(
                        "assets/JoeyDeRose.png",
                        width: MediaQuery.of(context).size.width- 100,
                        height: MediaQuery.of(context).size.width- 100,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * (1/32)),
                  Container(
                    width: MediaQuery.of(context).size.width - 50,
                    child: Text(
                      "Joey DeRose",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.bangers(
                        fontSize: 40,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 50,
                    child: Text(
                      "PGN President - 2023",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.bangers(
                        fontSize: 24,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * (1/32)),
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
                            'PGN has given me the opportunity to develop not just as a professional, but also as a person. I personally dealt with a rapidly changing environment around me coming into college. PGN helped me adjust to this change. Albeit the pledge semester was difficult and even being president has its challenges, but I would be nowhere near where I am today if it wasn\'t for the amazing upperclassmen that raised a professional out of me along with the amazing support system I have today.',
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            '\nI can say with a full heart that this community is bonded by passion and shares the goal of achievement. I am always amazed by those around me that are continually pushing the boundaries and limitations day after day.',
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "\nI hope that I can prove to you that PGN fosters both creative and innovative ideas of all its members. We will enable your ideas to flourish into fruition by providing a variety of workshops, along with helpful and meaningful connections that can be utilized to tackle the often scary unknowns of college life.",
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "\nIf you have reached this far in my note, thank you for taking the time to learn more about our organization. I hope we can leave as much an impact on you as it has on me.",
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
                ],
              ),
            ),
          ),
        )
    );
  }
}
