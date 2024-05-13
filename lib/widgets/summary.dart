import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_card.dart';

import '../data/summary_data.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Summary',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 10),
        CustomCard(
          color: Colors.grey.withOpacity(.2),
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              SummaryData.summary.length,
              (index) => Column(
                children: [
                  Text(
                    SummaryData.summary[index].title,
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    SummaryData.summary[index].value,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
