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
        const SizedBox(height: 7),
        buildButtons(),
        const SizedBox(height: 10),
        buildDescription(fontSize),
      ],
    );
  }

  Widget buildTitle(double fontsize) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
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
                const SizedBox(height: 2),
                AutoSizeText(
                  place.subtitle,
                  minFontSize: 12,
                  maxFontSize: 22,
                  style: TextStyle(fontSize: fontsize),
                ),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.green[500]),
          const SizedBox(width: 3),
          Text('41'),
          const SizedBox(width: 2),
        ],
      ),
    );
  }

  Widget buildButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildButton('CALL', Colors.green, Icons.call),
        buildButton('LOCATION', Colors.green, Icons.location_on),
        buildButton('SHARE', Colors.green, Icons.share_rounded),
      ],
    );
  }

  Widget buildButton(String label, Color color, IconData icon) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color),
          const SizedBox(height: 3),
          Text(label, style: TextStyle(fontSize: 12, color: color)),
        ],
      ),
    );
  }

  Widget buildDescription(double fontsize) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: AutoSizeText(
        place.description,
        minFontSize: 16,
        maxFontSize: 22,
        style: TextStyle(fontSize: fontsize),
      ),
    );
  }
}
