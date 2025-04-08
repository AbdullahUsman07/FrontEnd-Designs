import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_trip_app/data/states_data.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;

    return ListView.builder(
      itemCount: states.length + 1,
      itemBuilder:
          (context, index) => (index == 0) ? buildHeader(fontSize) : buildBody(index, fontSize),
    );
  }

  Widget buildHeader(double fontsize) {
    return DrawerHeader(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit:BoxFit.cover,
          image: AssetImage('assets/images/swat.jpg')),
      ),
      child: Container(
        alignment: Alignment.bottomLeft,
        child: AutoSizeText(
          'Pakistan',
          minFontSize: 22,
          maxFontSize: 30,
          style: TextStyle(fontSize: fontsize, color: Colors.white,),
        ),
      ),
    );
  }

  Widget buildBody(int index, double fontsize){
    return ListTile(
      leading: Icon(Icons.location_city),
      title: AutoSizeText(
        states[index-1],
        minFontSize: 18,
        maxFontSize: 28,
        style: TextStyle(fontSize: fontsize),
      ),
      selected: index ==1 ,
    );
  }
  
}
