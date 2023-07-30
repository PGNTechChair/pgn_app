import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 288,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.yellow, Color(0xffad9c00)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )
          ),
          child: Column (
            children: [

            ],
          )
        ),
      ),
    );
  }
}
