import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StoryPage2 extends StatefulWidget {
  const StoryPage2({super.key});

  @override
  State<StoryPage2> createState() => _StoryPage2State();
}

class _StoryPage2State extends State<StoryPage2> {
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
                          "Tips for Recruitment",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.bangers(
                            fontSize: 50,
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
                                'When it comes to most of our recruitment advice, it usually depends on the individual for what works best. Although, there are always some basic rules of thumb that come with showing off your best off.',
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
                      Container(
                        width: MediaQuery.of(context).size.width - 50,
                        child: Text(
                          "1. Always be (At Least) Five minutes early.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.bangers(
                            fontSize: 40,
                          ),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 1/32),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * (1/4),
                        child: Image.asset(
                          "assets/Timer.png",
                          width: MediaQuery.of(context).size.width- 50,
                          height: MediaQuery.of(context).size.width- 50,
                        ),
                      ),
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
                                'This rule should be present in all aspects of life (at least professionally). For recruitment week, PGN hosts several events for potential new members. Being late to an event can severly hinder a first impression that some brothers may have on a potential new member. Being on time is alright too, but always being a bit early to scope out the environment and readying yourself can do you tremendous wonders.',
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
                      Container(
                        width: MediaQuery.of(context).size.width - 50,
                        child: Text(
                          "2. Be Ready With a Resume",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.bangers(
                            fontSize: 40,
                          ),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 1/32),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * (1/4),
                        child: Image.asset(
                          "assets/Resume.png",
                          width: MediaQuery.of(context).size.width- 50,
                          height: MediaQuery.of(context).size.width- 50,
                        ),
                      ),
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
                                "Spoiler Alert: The final event for recruitment week is a final interview. Having a resume prepped with you will help you a lot understand your past achievements as well as allow brothers to be able to review past work and understand more about your experiences. If you think your resume is not up to snuff just know, a bad resume outshines no resume any day! Fixing up your resume skills can come later.",
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
                      Container(
                        width: MediaQuery.of(context).size.width - 50,
                        child: Text(
                          "3. Make Sure you Have Professional Clothes",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.bangers(
                            fontSize: 40,
                          ),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 1/32),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * (1/3),
                        child: Image.asset(
                          "assets/ProfessionalWear.png",
                          width: MediaQuery.of(context).size.width- 50,
                        ),
                      ),
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
                                "It should also be emphasized that professional wear is highly encouraged. For the final interview and speed dating is typically where you would be wearing them. For men, this would be a suit and dress pants. For females this would be a dress or a suit with dress pants. Dress shoes are also an important part of the attire. More information on attire will be given during our info nights.",
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
                      Container(
                        width: MediaQuery.of(context).size.width - 50,
                        child: Text(
                          "4. Be Independent",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.bangers(
                            fontSize: 40,
                          ),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 1/32),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * (1/3),
                        child: Image.asset(
                          "assets/Independence.png",
                          width: MediaQuery.of(context).size.width- 50,
                        ),
                      ),
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
                                "Going through recruitment week with friends is always fun especially if they are already part of the organization themselves, but the goal of recruitment week is to meet as many brothers as possible and leave an impact on them. Take this as an opportunity to improve your networking skills and make new friends rather than residing with those who already know you.",
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
                      Container(
                        width: MediaQuery.of(context).size.width - 50,
                        child: Text(
                          "5. Be Yourself",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.bangers(
                            fontSize: 40,
                          ),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 1/32),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * (1/3),
                        child: Image.asset(
                          "assets/BeYourself.png",
                          width: MediaQuery.of(context).size.width- 50,
                        ),
                      ),
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
                                "The most effort that can be wasted is trying to be someone you are not. Stay true to yourself and you will go far. There are plenty of other things to focus on rather than putting up a facade. Additionally, staying true to who you are empowers you to pursue paths aligned with your values, leading to a more fulfilling and purpose-driven life at PGN.",
                                style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              )
          ),
        )
    );
  }
}