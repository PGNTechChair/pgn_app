
import 'package:flutter/material.dart';

class SideMenuTile extends StatelessWidget {
  const SideMenuTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:18.0),
          child: Divider(
            color: Colors.white24,
            thickness: 1 ,
          ),
        ),
        ListTile(
            leading: Icon(Icons.settings, color: Colors.white),
            title: Text(
                "Settings",
                style: TextStyle(color: Colors.white)
            )
        ),
      ],
    );
  }
}
