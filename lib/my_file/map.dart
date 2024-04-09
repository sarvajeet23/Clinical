import 'package:flutter/material.dart';

class Maping extends StatelessWidget {
  const Maping({super.key});

  @override
  Widget build(BuildContext context) {
    var imageInfo = <String, String>{
      "Settings": "Setting.png",
      "payment": "creadit-card.png",
      "love": "award.png"
    };
    return Scaffold(
      body: Center(
        child: GestureDetector(),
      ),
    );
  }
}
