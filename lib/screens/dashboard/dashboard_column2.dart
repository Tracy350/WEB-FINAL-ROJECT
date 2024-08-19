import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_vendor/theme/colors.dart';
import 'package:hotel_vendor/widgets/dashboard_room_options.dart';

class DashboardColumn2 extends StatelessWidget {
  const DashboardColumn2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.23,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey, // Adjust border color here
                width: 1, // Adjust border width here
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Rooms',
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(fontWeight: FontWeight.w700))),
                ),
                Row(
                  children: [
                    DashboardRoomOptions(),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.008,
                    ),
                    DashboardRoomOptions(),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.008,
                    ),
                    DashboardRoomOptions(),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.008,
                    ),
                    DashboardRoomOptions(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
