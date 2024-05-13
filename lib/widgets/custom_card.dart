import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/constants/colors.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, this.color = DColors.cardBackgroundColor , required this.child, this.padding});
  final Color color;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child
    );
  }
}
