import 'package:flutter/material.dart';
import 'package:flutter_circular_text/circular_text.dart';
import 'package:google_fonts/google_fonts.dart';

class StoryPage4 extends StatefulWidget {
  const StoryPage4({super.key});

  @override
  State<StoryPage4> createState() => _StoryPage4State();
}

class _StoryPage4State extends State<StoryPage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo.shade50,
        body: SafeArea(
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
                          border: Border.all(color: Colors.black, width: 5), // Inner gold border
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Image.asset(
                          "assets/DavidEnghauser.png",
                          width: MediaQuery.of(context).size.width- 175,
                          height: MediaQuery.of(context).size.width- 175,
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * (1/16)),
                    Container(
                      width: MediaQuery.of(context).size.width - 100,
                      child: Text(
                        "Meet the Man Behind the Mic!",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.bangers(
                          fontSize: 50,
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * (1/16)),

                  ],
                ),
            ),
        )
    );
  }
}