import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/helpers/responsive.dart';
import 'package:responsive_dashboard/widgets/dashboard.dart';
import 'package:responsive_dashboard/widgets/right_board.dart';
import 'package:responsive_dashboard/widgets/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      drawer: !isDesktop
          ? const SizedBox(width: 250, child: SideMenuWidget())
          : null,
      endDrawer: Responsive.isMobile(context)
          ? const SizedBox(width: 300, child: RightBoardWidget())
          : null,
      body: SafeArea(
        child: Row(children: [
          if (isDesktop)
            const Expanded(
              flex: 2,
              child: SideMenuWidget(),
            ),
          const Expanded(flex: 7, child: DashboardWidget()),
          if (isDesktop)
            const Expanded(
              flex: 3,
              child: RightBoardWidget(),
            ),
        ]),
      ),
    );
  }
}
