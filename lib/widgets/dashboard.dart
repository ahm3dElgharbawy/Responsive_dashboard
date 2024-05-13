import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/helpers/responsive.dart';
import 'package:responsive_dashboard/widgets/bar_chart.dart';
import 'package:responsive_dashboard/widgets/health_details.dart';
import 'package:responsive_dashboard/widgets/line_chart.dart';
import 'package:responsive_dashboard/widgets/header_widget.dart';
import 'package:responsive_dashboard/widgets/right_board.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const HeaderWidget(),
            const SizedBox(height: 10),
            const HealthDetailsWidget(),
            const SizedBox(height: 10),
            const LineChartWidget(),
            const SizedBox(height: 10),
            const BarchartWidget(),
            if(Responsive.isTablet(context)) 
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: RightBoardWidget(),
              )
          ],
        ),
      ),
    );
  }
}
