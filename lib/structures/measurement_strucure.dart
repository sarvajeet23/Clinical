// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MeasureDetailsStrucure extends StatelessWidget {
  final Icon icon;
  final Text leading;
  final Text title;
  final Text subtitle;
  final Text trealing;
  final Widget lineChart;

  const MeasureDetailsStrucure({
    super.key,
    required this.icon,
    required this.leading,
    required this.title,
    required this.subtitle,
    required this.trealing,
    required this.lineChart,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 238, 244, 246)),
                borderRadius: BorderRadius.circular(2),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 2,
                    color: Colors.white,
                    blurRadius: 2,
                  ),
                ]),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: trealing,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: icon,
                      ),
                    ),
                    SizedBox(width: 20),
                    leading,
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        title,
                        subtitle,
                      ],
                    ),
                    // graph
                    Expanded(child: lineChart)
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
