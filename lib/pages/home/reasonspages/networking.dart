import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Networking extends StatefulWidget {
  const Networking({super.key});

  @override
  State<Networking> createState() => _NetworkingState();
}

class _NetworkingState extends State<Networking> {
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
                    "Just a Small Sample",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.bangers(
                      fontSize: 60,
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 1/32),
                Container(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 5), // Inner gold border
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Image.asset(
                      "assets/CompanyNetwork.png",
                      width: MediaQuery.of(context).size.width - 50,
                      height: MediaQuery.of(context).size.width - 50,
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
                          "Provided above, it is easy to see that our leaders of tomorrow have reached great heights. There are plenty more companies that brothers reside at, but then you would be scrolling for quite a bit!",
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          "PGN's direction caters towards recruiting all majors. Our evergrowing diverse cast of members will further expand the network of companies that brothers will work at. If you become a member yourself, never feel shy to utilize the PGN Member Database to seek out connections at a company. Alumni and other members are always willing to give you help at advice for your future at said business.",
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
