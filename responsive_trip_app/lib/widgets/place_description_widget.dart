

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_trip_app/model/place.dart';

class PlaceDescriptionWidget extends StatelessWidget {
  final Place place;
  const PlaceDescriptionWidget({super.key, required this.place});

  @override
  Widget build(BuildContext context) {

    double fontSize = MediaQuery.of(context).size.width * 0.025;

    return ListView(  
      children: [
        Image.asset(
          place.image,
          width: double.infinity,
          height: 320,
          fit: BoxFit.cover,
        ),
        buildTitle(fontSize),
      ],
    );
  }
  
  Widget buildTitle(double fontsize) {
    return Row(  
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(
                place.title,
                minFontSize: 16,
                maxFontSize: 32,
                style: TextStyle(fontSize: fontsize),
              ),
              const SizedBox(height: 2,),
              AutoSizeText(
                place.subtitle,
                minFontSize: 12,
                maxFontSize: 22,
                style: TextStyle(fontSize: fontsize),
              ),
            ],
        )),
        Icon(Icons.star,color: Colors.red[500],),
        const SizedBox(width: 3,),
        Text('41'),
        const SizedBox(width: 2,),
      ],
    );
  }
}