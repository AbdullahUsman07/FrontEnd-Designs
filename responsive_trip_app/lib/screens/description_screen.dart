

import 'package:flutter/material.dart';
import 'package:responsive_trip_app/model/place.dart';
import 'package:responsive_trip_app/widgets/place_description_widget.dart';

class DescriptionScreen extends StatelessWidget {
  final Place place;
  const DescriptionScreen({super.key,required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(  
        title: Text(place.title),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: PlaceDescriptionWidget(place:place),
    );
  }
}