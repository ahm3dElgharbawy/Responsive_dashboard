import 'package:flutter/material.dart';
import 'package:responsive_dashboard/data/health_details.dart';
import 'package:responsive_dashboard/utils/helpers/responsive.dart';
import 'package:responsive_dashboard/widgets/custom_card.dart';

class HealthDetailsWidget extends StatelessWidget {
  const HealthDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const healthDetails = HealthDetailsData.healthDetails;
    return GridView.builder(
      shrinkWrap: true,
      itemCount: healthDetails.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: Responsive.isMobile(context)? 2 : 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (context, i) => CustomCard(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              healthDetails.elementAt(i).icon,
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 5),
              child: Text(
                healthDetails.elementAt(i).value,
                style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w600),
              ),
            ),
            Text(
              healthDetails.elementAt(i).title,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 13
              ),
            ),
          ],
        ),
      ),
    );
  }
}
