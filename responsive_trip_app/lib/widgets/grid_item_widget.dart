import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_trip_app/model/place.dart';
import 'package:responsive_trip_app/widgets/place_description_widget.dart';
import 'package:responsive_trip_app/widgets/responsive_widget.dart';

class GridItemWidget extends StatelessWidget {
  final Place place;
  final ValueChanged<Place> onPlaceChanged;
  const GridItemWidget({
    super.key,
    required this.place,
    required this.onPlaceChanged,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final isMobile = ResponsiveWidget.isMobile(context);
        final isTablet = ResponsiveWidget.isTablet(context);

        if (isMobile || isTablet) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PlaceDescriptionWidget(place: place),
            ),
          );
        } else {
          onPlaceChanged(place);
        }
      },
      child: Card(
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
          child: Ink.image(image: AssetImage(place.image), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
