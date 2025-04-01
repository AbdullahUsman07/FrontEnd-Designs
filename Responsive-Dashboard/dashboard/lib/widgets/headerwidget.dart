

import 'package:dashboard/contants/colors.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: cardBackgroundColor,
        hintText: 'Search',
        prefixIcon: Icon(
          Icons.search,
          color: Colors.grey,
          size: 21,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0), 
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 5),
      ),
    );
  }
}