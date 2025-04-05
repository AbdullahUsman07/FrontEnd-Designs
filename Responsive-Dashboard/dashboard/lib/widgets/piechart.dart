import 'package:dashboard/contants/colors.dart';
import 'package:dashboard/data/pie_chart_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    final pieChartData = ChartData();
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(  
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: pieChartData.paiChartSelectionDatas,
            )
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: defaultPadding,),
                Text('70%',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  height: 0.5,
                ),
                ),
                const SizedBox(height: 8,),
                Text('of 100%'),
              ],
            )
          )
        ],
      ),
    );
  }
}