import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/constants/colors.dart';
import 'package:responsive_dashboard/widgets/pie_chart.dart';
import 'package:responsive_dashboard/widgets/schedule.dart';
import 'package:responsive_dashboard/widgets/summary.dart';

class RightBoardWidget extends StatelessWidget {
  const RightBoardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: DColors.cardBackgroundColor,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // pie chart
          PieChartWidget(),
          SizedBox(height: 10),
          // summary row
          SummaryWidget(),
          SizedBox(height: 40),
          // schedule
          Text(
            "Schedule",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 15),
          ScheduleWidget(),
        ],
      ),
    );
  }
}
