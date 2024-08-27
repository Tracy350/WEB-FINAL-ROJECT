import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_vendor/theme/colors.dart';

class DashboardRoomOptions extends StatelessWidget {
  const DashboardRoomOptions({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.13,
        width: MediaQuery.of(context).size.width * 0.15,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10,
            ),
            border: Border.all(color: Colors.grey, width: 0.5)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style:
                    GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 12)),
              ),
              Text.rich(
                TextSpan(
                    text: '2',
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    )),
                    children: [
                      TextSpan(
                          text: '/30',
                          style: GoogleFonts.montserrat(
                              textStyle:
                                  TextStyle(fontSize: 12, color: Colors.grey)))
                    ]),
              ),
              Text.rich(TextSpan(
                  text: '\$ 568',
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: AppColors.green1,
                          fontSize: 20,
                          fontWeight: FontWeight.w700)),
                  children: [
                    TextSpan(
                        text: '/day',
                        style: GoogleFonts.montserrat(
                            textStyle:
                                TextStyle(fontSize: 12, color: Colors.grey)))
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
