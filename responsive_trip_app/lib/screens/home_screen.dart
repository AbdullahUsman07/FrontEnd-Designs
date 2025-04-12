import 'package:flutter/material.dart';
import 'package:responsive_trip_app/data/places_data.dart';
import 'package:responsive_trip_app/model/place.dart';
import 'package:responsive_trip_app/screens/description_screen.dart';
import 'package:responsive_trip_app/widgets/drawer_widget.dart';
import 'package:responsive_trip_app/widgets/place_gallery_widget.dart';
import 'package:responsive_trip_app/widgets/responsive_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Place selectedPlace = allPlaces[0];
  void changePlace(Place place){
    setState(() {
      selectedPlace =place;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tour_App"),
        backgroundColor: Colors.green,
      ),
      drawer:
          ResponsiveWidget.isMobile(context)
              ? Drawer(
                child: DrawerWidget())
              : null,
      body: ResponsiveWidget(
        mobile: buildMobile(),
        desktop: buildDesktop(),
        tablet: buildTablet(),
      ),
    );
  }

  buildMobile() {
    return Container(
      color: Colors.grey[200],
      child: PlaceGalleryWidget(onPlaceChanged: changePlace,),
    );
  }

  buildDesktop() {
    return Row(  
      children: [
        Expanded(
          child: DrawerWidget()),
        Expanded(
          flex: 3,
          child: buildBody(),
        ),
      ],
    );
  }

  buildTablet() {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: DrawerWidget()),
          Expanded(
            flex: 5,
            child: PlaceGalleryWidget(onPlaceChanged: changePlace,))
      ],
    );
  }

  Widget buildBody(){
    return Container(
      padding: const EdgeInsets.all(8.0),
      color:Colors.grey[200],
      child: Column(
        children: [
          Expanded(
            child: PlaceGalleryWidget(
              isHorizontal: true,
              onPlaceChanged: changePlace,
            ),),
            Expanded(
              flex: 2,
              child: DescriptionScreen(place: selectedPlace)),
        ],
      ),
    );
  }
}
