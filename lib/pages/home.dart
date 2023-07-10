import 'package:flutter/material.dart';
import 'package:pgn_app/controllers/AnimationAppearController.dart';
import 'package:pgn_app/services/auth.dart';
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
class Home extends StatelessWidget {

  final AuthService _auth = AuthService();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text("Home Screen"),
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        actions: <Widget>[
          ElevatedButton.icon(
            icon: Icon(Icons.person),
            onPressed: () async {
              await _auth.signOut();
            },
            label: Text("Log Out"),
          )
        ],
      ),
    );
  }
}

