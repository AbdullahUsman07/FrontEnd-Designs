

import 'package:dashboard/models/healthmodel.dart';

class HealthDetails {
  final healthData = [
    HealthModel(icon: "assets/icons/burn.png", value: "345", title: "Calories Burned"),
    HealthModel(icon: 'assets/icons/steps.png', value: "12,763", title: "Steps"),
    HealthModel(icon: 'assets/icons/distance.png', value: "9 km", title: "Distance"),
    HealthModel(icon: 'assets/icons/sleep.png', value: "6h 52m", title: "Sleep"),
  ];
}
