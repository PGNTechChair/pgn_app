import 'package:flutter/material.dart';
import 'package:pgn_app/Controllers/AnimationAppearController.dart';
import 'package:pgn_app/Controllers/AnimationAppearController.dart';
// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: <Widget>[
//             Text('Home Screen')
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prevent Text Overflow Example'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: OverflowBox(
          maxWidth: double.infinity,
          child: Text(
            'Long Text That Should Not Overflow to the Right of the Screen',
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}

