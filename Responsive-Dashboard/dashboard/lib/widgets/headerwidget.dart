import 'package:dashboard/contants/colors.dart';
import 'package:dashboard/utils/responsive.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (!Responsive.isDesktop(context))
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
            ),
          ),
        if (!Responsive.isMobile(context))
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: cardBackgroundColor,
                hintText: 'Search',
                prefixIcon: Icon(Icons.search, color: Colors.grey, size: 21),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 5),
              ),
            ),
          ),
          if(Responsive.isMobile(context))
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.search),
              InkWell(
                onTap: ()=> Scaffold.of(context).openEndDrawer(),
                child: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  radius: 25,
                  
                  
                ),
              ),
            ],
          )
          
      ],
    );
  }
}
