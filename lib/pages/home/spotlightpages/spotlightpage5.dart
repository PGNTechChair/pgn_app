import 'package:flutter/material.dart';

class SpotlightPage5 extends StatefulWidget {
  const SpotlightPage5({super.key});

  @override
  State<SpotlightPage5> createState() => _SpotlightPage5State();
}

class _SpotlightPage5State extends State<SpotlightPage5> {
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
                    Text("5"),
                  ],
                )
            )
        )
    );
  }
}