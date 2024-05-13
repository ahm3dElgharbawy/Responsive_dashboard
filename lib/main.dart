import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/constants/colors.dart';
import 'package:responsive_dashboard/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Dashboard UI',
      theme: ThemeData(
        scaffoldBackgroundColor: DColors.backgroundColor,
        brightness: Brightness.dark,
        useMaterial3: false,
      ),
      home: const MainScreen(),
    );
  }
}
