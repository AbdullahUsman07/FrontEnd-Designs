

import 'package:dashboard/models/sidemenumodel.dart';
import 'package:flutter/material.dart';

class SideMenuData {

  final menu = <SideMenu>[
    SideMenu(icon: Icons.home, description: 'Dashboard'),
    SideMenu(icon: Icons.person, description: 'Profile'),
    SideMenu(icon: Icons.run_circle, description: 'Exercise'),
    SideMenu(icon: Icons.settings, description: 'Settings'),
    SideMenu(icon: Icons.history, description: 'History'),
    SideMenu(icon: Icons.logout, description: 'SignOut'),
  ];
}