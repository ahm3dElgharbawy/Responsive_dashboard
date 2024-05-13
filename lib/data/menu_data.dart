import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/menu.dart';

abstract class MenuData {
  static const menu = [
    MenuModel(title: "Dashboard", icon: Icons.home),
    MenuModel(title: "Profile", icon: Icons.person),
    MenuModel(title: "Exercise", icon: Icons.run_circle),
    MenuModel(title: "Settings", icon: Icons.settings),
    MenuModel(title: "History", icon: Icons.history),
    MenuModel(title: "SignOut", icon: Icons.logout),
  ];
}
