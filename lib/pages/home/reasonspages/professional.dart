import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Professional extends StatefulWidget {
  const Professional({super.key});

  @override
  State<Professional> createState() => _ProfessionalState();
}

class _ProfessionalState extends State<Professional> {
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
                    "Driving Professionalism Across the Nation",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.bangers(
                      fontSize: 44,
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 1/32),
                Container(
                  child: Container(
                    child: Image.asset(
                      "assets/ChicagoProfessionalPhoto.png",
                      width: MediaQuery.of(context).size.width- 50,
                      height: MediaQuery.of(context).size.width- 50,
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
                          'A primary goal of PGN is to develop each and every member to be business ready for their graduation. Our organization provides several opportunities within and outside of MSU to do just that.',
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '\nSome ventures that our organization has taken includes Chicago, New York City, and Detroit where brothers toured a multitude of Fortune 500 companies to get a better understanding of what the real world work place entails and perhaps even gather the interest to intern/work at the company in the future. Most companies toured include alumni that provide great connections for future employement!',
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
                    "assets/KappaInitiation.png",
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
                          "It is widely recognized at PGN that the pledge semester is when a member will grow the most. Although the process is intensive, it reflects the transformation of the people who take in part of it.",
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
                Column(
                  children: <Widget>[
                    ExpansionTile(
                      title: Text(
                        'Although activities may vary, some of the general undertakings include:',
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.how_to_vote_outlined, color: Colors.green[900],),
                          title: Text(
                            'Pledge Government Elections',
                            style: GoogleFonts.playfairDisplay(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: SvgPicture.asset(
                            'assets/linkedin.svg',
                            width: 30,
                            height: 30,
                            color: Colors.blue[900],
                          ),
                          title: Text(
                            'LinkedIn Profile Creation',
                            style: GoogleFonts.playfairDisplay(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.notes, color: Colors.purple,),
                          title: Text(
                            'Resume Workshops',
                            style: GoogleFonts.playfairDisplay(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.photo_filter, color: Colors.indigo[600],),
                          title: Text(
                            'Cover Letter Creation and Finetuning',
                            style: GoogleFonts.playfairDisplay(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.online_prediction, color: Colors.amber[900],),
                          title: Text(
                            'Several Presentation Events',
                            style: GoogleFonts.playfairDisplay(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.people_sharp, color: Colors.deepOrange,),
                          title: Text(
                            'Group Tasks',
                            style: GoogleFonts.playfairDisplay(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.pending_actions, color: Colors.pink,),
                          title: Text(
                            'Interview Preperation',
                            style: GoogleFonts.playfairDisplay(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.speaker_notes_outlined, color: Colors.red[700],),
                          title: Text(
                            'Public Speaking',
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
                          "The journey to professionalism doesn't just end there though. PGN offers may opportunities after the pledge semester for people to grow with the plethora of chair positions to choose from. PGN also values creativity and innovation, so if you decide you want to create a new chair that would help benefit the organization, all ears will be open to you! Some may even choose to serve on E-Board and help run the organization for a year's time.",
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "\nIn all, PGN hopes to gives you the aid necessary to present it's members with a bright future.",
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 1/16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

