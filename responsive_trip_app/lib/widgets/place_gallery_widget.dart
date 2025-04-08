import 'package:flutter/material.dart';
import 'package:responsive_trip_app/data/places_data.dart';
import 'package:responsive_trip_app/widgets/grid_item_widget.dart';

class PlaceGalleryWidget extends StatelessWidget {
  const PlaceGalleryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      scrollDirection: Axis.vertical,
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      children:
          allPlaces
              .map<Widget>((place) => GridItemWidget(place: place))
              .toList(),
    );
  }
}
