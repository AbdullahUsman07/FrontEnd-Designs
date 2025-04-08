import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_trip_app/model/place.dart';

class GridItemWidget extends StatelessWidget {
  final Place place;
  const GridItemWidget({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      child: GridTile(
        footer: GridTileBar(
          title: AutoSizeText(place.title, minFontSize: 18, maxFontSize: 28),
          subtitle: AutoSizeText(
            place.subtitle,
            minFontSize: 14,
            maxFontSize: 20,
          ),
        ),
        child: Ink.image(image: AssetImage(place.image),fit: BoxFit.cover,),
      ),
    );
  }
}
