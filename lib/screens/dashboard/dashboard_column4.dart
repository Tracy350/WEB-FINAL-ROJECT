import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_vendor/components/admin_reviews.dart';
import 'package:hotel_vendor/components/occupancy_statistics.dart';

class DashboardColumn4 extends StatelessWidget {
  const DashboardColumn4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.33,
      color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width / 2.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.red, // Adjust border color here
                      width: 1, // Adjust border width here
                    ),
                  ),
                  child: const OccupancyStatistics()),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              const CustomerReview()
            ],
          )
        ],
      ),
    );
  }
}
