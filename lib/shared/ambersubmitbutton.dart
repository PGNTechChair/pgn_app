import 'package:flutter/material.dart';

class AmberSubmitButton extends StatelessWidget {
  final VoidCallback onTap;
  final String message;

  const AmberSubmitButton({required this.onTap, required this.message});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 200.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: Colors.amberAccent[700],
          borderRadius: BorderRadius.circular(25.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: Offset(0.0, 3.0),
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Center(
          child: Text(
            message,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}