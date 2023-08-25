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
                Text("Philanthropy"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
