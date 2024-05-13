import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/constants/colors.dart';
import 'package:responsive_dashboard/utils/helpers/responsive.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: const Icon(Icons.menu),
            ),
          ),
        Responsive.isMobile(context)
            ? Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Icon(Icons.search),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                      child: const CircleAvatar(
                        backgroundImage: AssetImage("assets/images/avatar.png"),
                      ),
                    ),
                  ],
                ),
              )
            : Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: DColors.cardBackgroundColor,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    hintText: "Search",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
      ],
    );
  }
}
