import 'package:flutter/material.dart';
import 'package:responsive_dashboard/data/schedule_data.dart';
import 'package:responsive_dashboard/widgets/custom_card.dart';

class ScheduleWidget extends StatelessWidget {
  const ScheduleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        ScheduleData.schedules.length,
        (index) => Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: CustomCard(
            color: Colors.black,
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ScheduleData.schedules[index].title,
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      ScheduleData.schedules[index].date,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more,
                    color: Colors.white,
                  ),
                  hoverColor: Colors.grey[100],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
