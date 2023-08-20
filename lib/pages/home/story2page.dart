import 'package:flutter/material.dart';

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
                    )
                  ],
                )
            )
        )
    );
  }
}