import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/menu.dart';
import 'package:responsive_dashboard/utils/constants/colors.dart';

class BuildSideMenuItem extends StatelessWidget {
  const BuildSideMenuItem(
      {super.key, required this.menuModel, this.isSelected = false, required this.onTap});

  final MenuModel menuModel;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? DColors.selectionColor : null,
        borderRadius: BorderRadius.circular(10)
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Icon(
                menuModel.icon,
                color: isSelected ? Colors.black : Colors.grey,
              ),
            ),
            Text(
              menuModel.title,
              style: TextStyle(
                color: isSelected ?  Colors.black : Colors.grey ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
