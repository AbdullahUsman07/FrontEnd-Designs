import 'package:dashboard/widgets/dashboard.dart';
import 'package:dashboard/widgets/sidebarmenu.dart';
import 'package:dashboard/widgets/summarywidget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(flex: 2, child: SideBarMenu()),
            Expanded(flex: 7, child: Dashboard(),),
            Expanded(flex: 3, child: SummaryWidget()),
          ],
        ),
      ),
    );
  }
}
