
import 'package:dashboard/widgets/activitiescard.dart';
import 'package:dashboard/widgets/headerwidget.dart';
import 'package:dashboard/widgets/linebarchart.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15,right: 20),
      child: ListView(
        children: [
          const SizedBox(height: 15,),
          HeaderWidget(),
          const SizedBox(height: 15,),
          ActivityDetailsCard(),
          LineChartCard(),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}