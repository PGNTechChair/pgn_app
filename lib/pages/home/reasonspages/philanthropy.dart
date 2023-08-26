import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Philanthropy extends StatefulWidget {
  const Philanthropy({super.key});

  @override
  State<Philanthropy> createState() => _PhilanthropyState();
}

class _PhilanthropyState extends State<Philanthropy> {
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
                    "Helping Those Around Us",
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
                      "assets/PiGammaNu.png",
                      width: MediaQuery.of(context).size.width - 50,
                      height: MediaQuery.of(context).size.width - 200,
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
                          "Even though we wish to help each other within the organization, we definitely care for the world around us. We make it a goal for PGN to have a substantial impact on the community around us. Whether if it raising funds for Anastasia and Katie's Coffee Shop through our notorious Pi Gamma Nu event where brothers simply just pie each other in the face!",
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          "We also seek out opportunities at food drives and other local events that may grant a better future in all respects.",
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
                    "assets/PumpkinCarving.png",
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
                          "Philanthropy will always be a key component for PGN's outlook. Even if the scope is small, the smiles and joy of others leads the best fortune for all of us.",
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
