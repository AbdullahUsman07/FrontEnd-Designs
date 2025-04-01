

import 'package:dashboard/contants/colors.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {

  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  const CustomCard({super.key, required this.child,this.color,this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? cardBackgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      child: Padding(
        padding: padding?? EdgeInsets.zero,
        child: child,),
    );
  }
}