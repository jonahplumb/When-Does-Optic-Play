import 'package:flutter/material.dart';

class RL extends StatelessWidget {
  const RL({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/OG.png',
          width: 150,
          height: 150,
        ),
        Text(
          'Coming Soon!',
          style: TextStyle(
              fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
