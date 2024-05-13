import 'package:flutter/material.dart';
import 'package:responsive_dashboard/data/menu_data.dart';
import 'package:responsive_dashboard/widgets/side_menu_item.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  int selectedTap = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 60),
      color: const Color(0xFF171821),
      child: ListView.builder(
        itemCount: MenuData.menu.length,
        itemBuilder: (context, i) => BuildSideMenuItem(
          menuModel: MenuData.menu.elementAt(i),
          isSelected: selectedTap == i,
          onTap: () {
            setState(() {
              selectedTap = i;
            });
          },
        ),
      ),
    );
  }
}
