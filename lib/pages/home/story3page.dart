import 'package:flutter/material.dart';
import 'package:pgn_app/pages/home/spotlightpages/spotlightpage1.dart';
import 'package:pgn_app/pages/home/spotlightpages/spotlightpage2.dart';
import 'package:pgn_app/pages/home/spotlightpages/spotlightpage3.dart';
import 'package:pgn_app/pages/home/spotlightpages/spotlightpage4.dart';
import 'package:pgn_app/pages/home/spotlightpages/spotlightpage5.dart';
import 'package:pgn_app/pages/home/spotlightpages/spotlightpage6.dart';
import 'package:pgn_app/pages/home/spotlightpages/spotlightpage7.dart';
import 'package:pgn_app/pages/home/spotlightpages/spotlightpage8.dart';
import 'package:pgn_app/pages/home/spotlightpages/spotlightpage9.dart';

class StoryPage3 extends StatefulWidget {
  const StoryPage3({super.key});

  @override
  State<StoryPage3> createState() => _StoryPage3State();
}

class _StoryPage3State extends State<StoryPage3> {

  List<String> images = ["ShreyaPeddi.png", "OwenLee.png", "SamanthaChin.png",
                        "ShreyaPeddi.png", "OwenLee.png", "SamanthaChin.png",
                        "ShreyaPeddi.png", "JackieLee.png", "SamanthaChin.png" ];


  void _navigateToSpotlightPage(BuildContext context, int index) {
    Widget newPage;

    switch (index) {
      case 0:
        newPage = SpotlightPage1();
        break;
      case 1:
        newPage = SpotlightPage2();
        break;
      case 2:
        newPage = SpotlightPage3();
        break;
      case 3:
        newPage = SpotlightPage4();
        break;
      case 4:
        newPage = SpotlightPage5();
        break;
      case 5:
        newPage = SpotlightPage6();
        break;
      case 6:
        newPage = SpotlightPage7();
        break;
      case 7:
        newPage = SpotlightPage8();
        break;
      case 8:
        newPage = SpotlightPage9();
        break;

      default:
        newPage = Container();
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => newPage),
    );
  }

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
                      SizedBox(height: MediaQuery.of(context).size.height * (1/8)),
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * (5/9),
                        decoration: BoxDecoration(
                          color: Colors.white38,
                          border: Border.all(color: Colors.indigo[100]!, width: 5), // Inner gold border
                          borderRadius: BorderRadius.circular(24)
                        ),
                        child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: MediaQuery.of(context).size.height * (1/50),
                            mainAxisExtent: MediaQuery.of(context).size.height * (1/6),
                          ),
                          itemCount: images.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                _navigateToSpotlightPage(context, index);
                              },
                              child: Container(
                                margin: EdgeInsets.all(8),
                                child: Image.asset(
                                  "assets/${images[index]}",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  )
              ),
          ),
        )
    );
  }
}