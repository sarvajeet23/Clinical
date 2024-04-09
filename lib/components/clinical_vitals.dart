// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test8/components/tab_bar.dart';
import 'package:test8/structures_data/measure_details_data.dart';

class CinicalVitals extends StatelessWidget {
  const CinicalVitals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clinical Vitals"),
        elevation: 2,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: MeasurementData(),
    );
  }
}
