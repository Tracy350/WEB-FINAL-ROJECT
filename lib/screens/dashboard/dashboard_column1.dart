import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_vendor/theme/colors.dart';

class DashboardColumn1 extends StatelessWidget {
  const DashboardColumn1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Container(
             
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  border: Border.all(color: Colors.grey, width: 1)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Overview',
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(fontWeight: FontWeight.w700))),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Today\'s',
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      fontSize: 15, color: Colors.grey)),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Check-in',
                                  style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                          color: AppColors.green1,
                                          fontWeight: FontWeight.w700)),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '23',
                                  style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700)),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Today\'s',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: 15, color: Colors.grey)),
                          ),
                          Row(
                            children: [
                              Text(
                                'Check-in',
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        color: AppColors.green1,
                                        fontWeight: FontWeight.w700)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '23',
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700)),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Today\'s',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: 15, color: Colors.grey)),
                          ),
                          Row(
                            children: [
                              Text(
                                'Check-in',
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        color: AppColors.green1,
                                        fontWeight: FontWeight.w700)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '23',
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700)),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Today\'s',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: 15, color: Colors.grey)),
                          ),
                          Row(
                            children: [
                              Text(
                                'Check-in',
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        color: Colors.blueAccent,
                                        fontWeight: FontWeight.w700)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '23',
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700)),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Today\'s',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: 15, color: Colors.grey)),
                          ),
                          Row(
                            children: [
                              Text(
                                'Check-in',
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        color: Colors.blueAccent,
                                        fontWeight: FontWeight.w700)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '23',
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700)),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )),
            SizedBox(
              height: 20,
            ),
            // Expanded(
            //     flex: 2,
            //     child: Container(
            //       height: 200,
            //       color: Colors.blue,
            //     ))
          ],
        ),
      ),
    );
  }
}
