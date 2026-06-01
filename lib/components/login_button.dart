import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final text;
  const LoginButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 428,
      decoration: BoxDecoration(color:Color(0xFF3A3E49),borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
