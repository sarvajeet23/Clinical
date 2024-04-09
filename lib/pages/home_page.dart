import 'package:flutter/material.dart';
import 'package:test8/components/clinical_vitals.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const CinicalVitals(),
              ),
            );
          },
          child: const Text("Clinical pages"),
        ),
      ),
    );
  }
}
