import 'package:dashboard/data/bar_graph_data.dart';
import 'package:dashboard/models/graphmodel.dart';
import 'package:dashboard/widgets/customcard.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarGraphCard extends StatelessWidget {
  const BarGraphCard({super.key});

  @override
  Widget build(BuildContext context) {
    final barGraphData = BarGraphData();

    return GridView.builder(
      itemCount: barGraphData.data.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 12.0,
        crossAxisSpacing: 15.0,
        childAspectRatio: 5 / 4,
      ),
      itemBuilder: (context, index) {
        return CustomCard(
          padding: EdgeInsets.all(5.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  barGraphData.data[index].label,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 12,),
              Expanded(
                child: BarChart(
                  BarChartData(  
                    barGroups: _chartGroups(
                      points: barGraphData.data[index].graph,
                      color:barGraphData.data[index].color,
                    ),
                    borderData: FlBorderData(border: const Border()),
                    gridData: FlGridData(show: false),
                    titlesData: FlTitlesData(
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value,meta){
                            return Padding(
                              padding: const EdgeInsets.only(top:5),
                              child: Text(barGraphData.label[value.toInt()],
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),),
                            );
                          }
                        )
                      ),
                      rightTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      topTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                    ),
                  )
                ))
            ],
          ),
        );
      },
    );
  }

  List<BarChartGroupData> _chartGroups(
      {required List<GraphModel> points, required Color color}) {
    return points
        .map((point) => BarChartGroupData(x: point.x.toInt(), barRods: [
              BarChartRodData(
                toY: point.y,
                width: 12,
                color: color,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(3.0),
                  topRight: Radius.circular(3.0),
                ),
              )
            ]))
        .toList();
  }

}
