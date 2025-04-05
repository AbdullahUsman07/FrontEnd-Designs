
import 'package:dashboard/models/graphmodel.dart';
import 'package:flutter/material.dart';

class BarGraphmodel{

  final String label;
  final Color color;
  List<GraphModel> graph;

  BarGraphmodel({required this.label, required this.color, required this.graph});
}