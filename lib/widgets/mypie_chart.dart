import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';

class MyPieChart extends StatefulWidget {
  const MyPieChart({super.key});

  @override
  State<MyPieChart> createState() => _MyPieChartState();
}

class _MyPieChartState extends State<MyPieChart> {
  int choiceIndex = 0;

  Map<String, double> dataMap = {"Completed": 20, "Not Yet": 80};

  List<Color> colorList = [
    const Color(0xFF1AB65C),
    const Color(0xFFE0E0E0),
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
     
    );
  }
}
