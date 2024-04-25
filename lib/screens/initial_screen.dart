import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {

  const InitialScreen({ super.key });

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {

  @override
  void initState() {
    super.initState();
  }

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text(''),),
           body: SingleChildScrollView(
             child: Column(
               children: [
                const SizedBox(height: 100),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.5,
                  child: RadarChart(
                    RadarChartData(
                      radarBackgroundColor: Colors.blueGrey,
                      dataSets: [
                        RadarDataSet(
                          dataEntries: [
                            const RadarEntry(value: 20),
                            const RadarEntry(value: 3),
                            const RadarEntry(value: 33),
                        ]),
                      ],
                    )
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.5,
                  child: PieChart(
                    swapAnimationCurve: Curves.easeInOut,
                    swapAnimationDuration: const Duration(seconds: 1),
                    PieChartData(
                      sections: [
                        PieChartSectionData(value: 2, color: Colors.redAccent, titleStyle: const TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold)),
                        PieChartSectionData(value: 20, color: Colors.pinkAccent, titleStyle: const TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold)),
                        PieChartSectionData(value: 55, color: Colors.greenAccent, titleStyle: const TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold)),
                        PieChartSectionData(value: 33, color: Colors.yellowAccent, titleStyle: const TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold)),
                    ])
                  ),
                 ),
                 SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.5,
                   child: BarChart(
                    swapAnimationCurve: Curves.linear,
                    swapAnimationDuration: const Duration(seconds: 1),
                    BarChartData(
                    borderData: FlBorderData(
                        border: const Border(
                          top: BorderSide.none,
                          right: BorderSide.none,
                          left: BorderSide(width: 1),
                          bottom: BorderSide(width: 1),
                    )),
                    groupsSpace: 7,
                    barGroups: [
                        BarChartGroupData(x: 1, barRods: [
                        BarChartRodData(fromY: 0, toY: 10, width: 15, color: const Color.fromARGB(255, 255, 152, 7)),
                      ]),
                        BarChartGroupData(x: 2, barRods: [
                        BarChartRodData(fromY: 0, toY: 10, width: 15, color: const Color.fromARGB(255, 27, 208, 202)),
                      ]),
                        BarChartGroupData(x: 3, barRods: [
                        BarChartRodData(fromY: 0, toY: 15, width: 15, color: const Color.fromARGB(255, 255, 7, 7)),
                      ]),
                        BarChartGroupData(x: 4, barRods: [
                        BarChartRodData(fromY: 0, toY: 10, width: 15, color: const Color.fromARGB(255, 83, 207, 21)),
                      ]),
                        BarChartGroupData(x: 5, barRods: [
                        BarChartRodData(fromY: 0, toY: 11, width: 15, color: const Color.fromARGB(255, 232, 50, 171)),
                      ]),
                        BarChartGroupData(x: 6, barRods: [
                        BarChartRodData(fromY: 0, toY: 10, width: 15, color: const Color.fromARGB(255, 169, 54, 41)),
                      ]),
                        BarChartGroupData(x: 7, barRods: [
                        BarChartRodData(fromY: 0, toY: 10, width: 15, color: Colors.amber),
                      ]),
                        BarChartGroupData(x: 8, barRods: [
                        BarChartRodData(fromY: 0, toY: 10, width: 15, color: const Color.fromARGB(255, 163, 155, 130)),
                      ]),
                    ])),
                 ),
               ],
             ),
           ),
       );
  }
}