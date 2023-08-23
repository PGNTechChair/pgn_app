import 'package:flutter/material.dart';

class SpotlightPage1 extends StatefulWidget {
  const SpotlightPage1({super.key});

  @override
  State<SpotlightPage1> createState() => _SpotlightPage1State();
}

class _SpotlightPage1State extends State<SpotlightPage1> {
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
                    Text("1"),
                  ],
                )
            )
        )
    );
  }
}