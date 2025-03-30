

import 'package:dashboard/widgets/sidebarmenu.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: SideBarMenu(),),
              Expanded(
                flex: 7,
                child: Container(
                color: Colors.green,
              )),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.yellow,
                ))
          ],))
    );
  }
}