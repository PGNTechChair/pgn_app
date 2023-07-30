import 'package:flutter/material.dart';

class SideMenuTile extends StatelessWidget {

  final Icon iconName;
  final String sideMenuOption;

  const SideMenuTile({required this.iconName, required this.sideMenuOption});

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
            leading: iconName,
            title: Text(
                sideMenuOption,
                style: TextStyle(color: Colors.white)
            )
        ),
      ],
    );
  }
}
