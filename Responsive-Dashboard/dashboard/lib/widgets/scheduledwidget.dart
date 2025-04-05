import 'package:dashboard/data/schedule_data.dart';
import 'package:dashboard/widgets/customcard.dart';
import 'package:flutter/material.dart';

class Scheduled extends StatelessWidget {
  const Scheduled({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ScheduleData();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('Scheduled'),
        for (var index = 0; index < data.scheduled.length; index++)
           Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: CustomCard(
              padding: const EdgeInsets.all(5.0),
              color: Colors.black,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data.scheduled[index].title,
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            data.scheduled[index].date,
                            style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const Icon(Icons.more),
                    ],
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
