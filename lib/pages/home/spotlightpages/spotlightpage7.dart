import 'package:flutter/material.dart';

class SpotlightPage7 extends StatefulWidget {
  const SpotlightPage7({super.key});

  @override
  State<SpotlightPage7> createState() => _SpotlightPage7State();
}

class _SpotlightPage7State extends State<SpotlightPage7> {
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
                    Text("7"),
                  ],
                )
            )
        )
    );
  }
}