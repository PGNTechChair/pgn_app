import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  Container(
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
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue[700]!, width: 3), // Inner gold border
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
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple[700]!, width: 3), // Inner gold border
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
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.green[900]!, width: 3), // Inner gold border
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
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.amber[900]!, width: 3), // Inner gold border
                        borderRadius: BorderRadius.circular(5)
                    ),
                    width: MediaQuery.of(context).size.width- 100,
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Image.asset(
                        "assets/CommunitySection.png",
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * (1/8)),
                ],
              ),
            ),
          ),
        )
    );
  }
}
