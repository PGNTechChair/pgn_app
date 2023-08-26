import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Social extends StatefulWidget {
  const Social({super.key});

  @override
  State<Social> createState() => _SocialState();
}

class _SocialState extends State<Social> {
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
                    "PGN Out and About",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.bangers(
                      fontSize: 60,
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 1/32),
                Container(
                  child: Container(
                    child: Image.asset(
                      "assets/SkiTrip.png",
                      width: MediaQuery.of(context).size.width- 50,
                      height: MediaQuery.of(context).size.width - 100,
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
                          "When not on the school grind, our PGN members certainly know how to get outside and soak in the college experience. Whether if its taking a winter adventure to the ski hills up north or going out for the St. Patty's Darty, our group takes every event as moment to build their relationships with one another.",
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          "PGN also hosts plenty of fun events for its members and pledges. Including board game tournaments, movie nights,and holiday parties!",
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
                  width: MediaQuery.of(context).size.width - 50,
                  child: Image.asset(
                    "assets/StPattys.png",
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
                          "Although not every social event primarily reflects professional development, we wish to grant times that will be remembered for a lifetime to come.",
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
