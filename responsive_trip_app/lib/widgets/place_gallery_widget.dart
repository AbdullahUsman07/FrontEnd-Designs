import 'package:flutter/material.dart';
import 'package:responsive_trip_app/data/places_data.dart';
import 'package:responsive_trip_app/model/place.dart';
import 'package:responsive_trip_app/widgets/grid_item_widget.dart';

class PlaceGalleryWidget extends StatelessWidget {
  final bool isHorizontal;
  final ValueChanged<Place> onPlaceChanged;
  const PlaceGalleryWidget({
    super.key,
    this.isHorizontal = false,
    required this.onPlaceChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      scrollDirection: isHorizontal ? Axis.horizontal : Axis.vertical,
      crossAxisCount: isHorizontal ? 1 : 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      children:
          allPlaces
              .map<Widget>(
                (place) => GridItemWidget(
                  place: place,
                  onPlaceChanged: onPlaceChanged,
                ),
              )
              .toList(),
    );
  }
}
