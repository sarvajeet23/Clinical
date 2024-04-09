//import 'package:fl_chart_app/presentation/resources/app_resources.dart';
// ignore_for_file: prefer_const_constructors

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample2 extends StatefulWidget {
  const LineChartSample2({super.key});

  @override
  State<LineChartSample2> createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<LineChartSample2> {
  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 3,
          child: Padding(
            padding: const EdgeInsets.only(
              right: 30,
              left: 20,
              top: 30,
              bottom: 15,
            ),
            child: LineChart(
              mainData(),
            ),
          ),
        ),
        SizedBox(
          width: 60,
          height: 34,
          child: TextButton(
            onPressed: () {
              setState(() {
                showAvg = !showAvg;
              });
            },
            child: Text(
              'avg',
              style: TextStyle(
                fontSize: 12,
                color: showAvg ? Colors.white.withOpacity(0.5) : Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: false, //this is a remove backgrand
      ),
      titlesData: FlTitlesData(
        //this is a outer border text of curve to diesable
        show: false,
      ),
      borderData: FlBorderData(
        show: false, // this is a outer border remove
        border: Border.all(color: Color.fromARGB(255, 246, 246, 246)),
      ),
      minX: 0,
      maxX: 11,
      minY: 2,
      maxY: 5,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,

          barWidth: 4,
          //isStrokeCapRound: false,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: false,
          ),
        ),
      ],
    );
  }

  LineChartData avgData() {
    return LineChartData(
      lineTouchData: const LineTouchData(enabled: false),
      gridData: FlGridData(
        show: false,
        drawHorizontalLine: true,
        verticalInterval: 1,
        horizontalInterval: 1,
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color: Colors.blue,
            strokeWidth: 1,
          );
        },
        // getDrawingHorizontalLine: (value) {
        //   return const FlLine(
        //     color: Colors.blue,
        //     strokeWidth: 1,
        //   );
        // },
      ),
      // borderData: FlBorderData(
      //   show: false,
      //   border: Border.all(color: Colors.blue),
      // ),
    );
  }
}
