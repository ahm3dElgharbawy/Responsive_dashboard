import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/data/line_chart_data.dart';
import 'package:responsive_dashboard/widgets/custom_card.dart';
import 'package:responsive_dashboard/utils/constants/colors.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Steps Overview",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 20),
          AspectRatio(
            aspectRatio: 16 / 6,
            child: LineChart(
              LineChartData(
                  minX: 0,
                  maxX: 120,
                  maxY: 105,
                  minY: 0,
                  borderData: FlBorderData(show: false),
                  titlesData: buildTitlesData(),
                  gridData: const FlGridData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                      color: DColors.selectionColor,
                      spots: LineData.spots,
                      dotData: const FlDotData(show: false),
                      belowBarData: BarAreaData(
                        show: true,
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              DColors.selectionColor.withOpacity(.5),
                              Colors.transparent
                            ]),
                      ),
                    ),
                  ]),
              // Optional
            ),
          ),
        ],
      ),
    );
  }

  FlTitlesData buildTitlesData() {
    return FlTitlesData(
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          interval: 1,
          reservedSize: 40,
          getTitlesWidget: (value, meta) {
            String text = LineData.leftTitle[value] ?? "";
            return Text(
              text,
              style: const TextStyle(color: Colors.grey),
            );
          },
        ),
      ),
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          getTitlesWidget: (value, meta) {
            String text = LineData.bottomTitle[value] ?? "";
            return Text(
              text,
              style: const TextStyle(color: Colors.grey),
            );
          },
        ),
      ),
      topTitles: const AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      rightTitles: const AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
    );
  }
}
