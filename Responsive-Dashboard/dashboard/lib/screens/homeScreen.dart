import 'package:dashboard/utils/responsive.dart';
import 'package:dashboard/widgets/dashboard.dart';
import 'package:dashboard/widgets/sidebarmenu.dart';
import 'package:dashboard/widgets/summarywidget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final isDesktop = Responsive.isDesktop(context);

    return Scaffold(
      drawer: !isDesktop?
        SizedBox(  
          width: 250,
          child: SideBarMenu(),
        ):null,
        endDrawer: (Responsive.isMobile(context))? SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: SummaryWidget(),
        ):null,
      body: SafeArea(
        child: Row(
          children: [
            if(isDesktop)
            Expanded(flex: 2, child: SideBarMenu()),
            Expanded(flex: 7, child: Dashboard(),),
            if(isDesktop)
            Expanded(flex: 3, child: SummaryWidget()),
          ],
        ),
      ),
    );
  }
}
