import 'package:dashboard/data/health_details.dart';
import 'package:dashboard/widgets/customcard.dart';
import 'package:flutter/material.dart';

class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final data = HealthDetails();

    return SizedBox(
      height: 180,
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: data.healthData.length,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 15,
          mainAxisSpacing: 12.0,
        ),
        itemBuilder:
            (context, index) => CustomCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(data.healthData[index].icon, height: 30, width: 30),
                  Padding(
                    padding: EdgeInsets.only(top: 14, bottom: 4),
                    child: Text(
                      data.healthData[index].value,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    data.healthData[index].title,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
      ),
    );
  }
}
