import 'package:flutter/material.dart';
import 'package:responsive_trip_app/screens/home_screen.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(  
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      title: 'Trip_App',
      home: HomeScreen(),
    );
  }
}