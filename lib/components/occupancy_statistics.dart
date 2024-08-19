import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OccupancyStatistics extends StatelessWidget {
  const OccupancyStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                'Occupancy Statistics',
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(fontWeight: FontWeight.w700)),
              ),
              Spacer(),
              Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                    color: Colors.grey, // Adjust border color here
                    width: 1, // Adjust border width here
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.calendar_month),
                    Text(
                      'Monthly',
                      style: GoogleFonts.montserrat(textStyle: TextStyle()),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
