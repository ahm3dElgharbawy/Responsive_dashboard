import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/data/pie_graph_data.dart';

class PieChartWidget extends StatelessWidget {
  const PieChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        SizedBox(
          height: 200,
          child: Stack(
            children: [
              PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(enabled: true),
                  startDegreeOffset: -90,
                  sectionsSpace: 0,
                  sections: PieGraphData.data,
                ),
              ),
              const Positioned.fill(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "70%",
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "of 100%",
                      style: TextStyle(
                        color: Colors.white60,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
