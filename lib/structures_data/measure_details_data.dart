// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test8/components/heart_rate_graph.dart';
import 'package:test8/components/tab_bar.dart';
import 'package:test8/data/data.dart';
import 'package:test8/structures/measurement_strucure.dart';

class MeasurementData extends StatelessWidget {
  const MeasurementData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTabBar(),
        Expanded(
          child: ListView.builder(
            itemCount: Data().clinicalsData.length,
            itemBuilder: (context, index) {
              final model = Data().clinicalsData[index];
              return MeasureDetailsStrucure(
                icon: Icon(
                  model.icon,
                  color: Colors.white,
                ),
                leading: Text(model.percent.toString()),
                title: Text(model.title ?? ''),
                subtitle: Text(model.subtitle ?? ''),
                trealing: Text(
                  model.status ?? 'Normal',
                  style: TextStyle(color: Colors.white),
                ),
                lineChart: LineChartSample2(),
              );
            },
          ),
        ),
      ],
    );
  }
}
