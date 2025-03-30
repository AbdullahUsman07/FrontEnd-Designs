

import 'package:dashboard/contants/colors.dart';
import 'package:dashboard/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideBarMenu extends StatefulWidget {
  const SideBarMenu({super.key});

  @override
  State<SideBarMenu> createState() => _SideBarMenuState();
}

class _SideBarMenuState extends State<SideBarMenu> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: Container(
        color: const Color(0xFF171821),
        child: ListView.builder(
          itemCount: data.menu.length,
          itemBuilder: (context,index) => buildMenuItem(data, index)),
      ),
    );
  }

  Widget buildMenuItem(SideMenuData data, int index){

    final isSelected = selectedIndex == index;

    return Container(
      decoration: BoxDecoration(
        color: isSelected? selectionColor : Colors.transparent,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: InkWell(
        onTap: ()=> setState(() {
          selectedIndex = index;
        }),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(data.menu[index].icon,
              color: isSelected? Colors.black : Colors.grey,
              ),
            ),
            Text(data.menu[index].description,style: TextStyle(
              color: isSelected? Colors.black : Colors.grey,
              fontWeight: isSelected? FontWeight.w500: FontWeight.normal,
            ),),
          ],
        ),
      ),
    );
  }
}