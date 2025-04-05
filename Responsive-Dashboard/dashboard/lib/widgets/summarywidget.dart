

import 'package:dashboard/contants/colors.dart';
import 'package:dashboard/widgets/piechart.dart';
import 'package:flutter/material.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(  
      decoration: BoxDecoration(
        color: cardBackgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Chart(),
            Text('Summary', style: TextStyle(  
              fontSize: 16, fontWeight: FontWeight.w600,
            ),)
          ],),
      ),
    );
  }
}