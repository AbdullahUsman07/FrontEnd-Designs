import 'package:flutter/material.dart';
import 'package:responsive_trip_app/widgets/drawer_widget.dart';
import 'package:responsive_trip_app/widgets/responsive_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trip_App"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        child: ResponsiveWidget.isMobile(context) ? DrawerWidget() : null,
      ),
      body: ResponsiveWidget(
        mobile: buildMobile(),
        desktop: buildDesktop(),
        tablet: buildTablet(),
      ),
    );
  }

  buildMobile() {
    return Container(
      color: Colors.blue,
      child: Center(child: Text('This is Mobile')),
    );
  }

  buildDesktop() {
    return Container(
      color: Colors.orange,
      child: Center(child: Text('This is Desktop')),
    );
  }

  buildTablet() {
    return Container(
      color: Colors.pink,
      child: Center(child: Text('This is Tablet')),
    );
  }
}
