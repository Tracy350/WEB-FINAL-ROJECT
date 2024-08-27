import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_vendor/screens/dashboard/mygraph.dart';
import 'package:hotel_vendor/theme/colors.dart';
import 'package:hotel_vendor/widgets/mypie_chart.dart';

class DashboardColumn3 extends StatelessWidget {
  const DashboardColumn3({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2.5,
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
                      child: Text('Room Status',
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w700))),
                    ),
                    FittedBox(
                      child: Row(
                        children: [
                          DataTable(
                            headingRowHeight: 40,
                            columns: [
                              DataColumn(
                                  label: Text('Occupied rooms',
                                      style: GoogleFonts.montserrat(
                                          textStyle: const TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700)))),
                              DataColumn(
                                  label: Text('104',
                                      style: GoogleFonts.montserrat(
                                          textStyle: const TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700)))),
                            ],
                            rows: [
                              DataRow(cells: [
                                DataCell(Text('Clean',
                                    style: GoogleFonts.montserrat(
                                        textStyle:
                                            const TextStyle(fontSize: 10)))),
                                DataCell(Text('30',
                                    style: GoogleFonts.montserrat(
                                        textStyle:
                                            const TextStyle(fontSize: 10)))),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('Dirty',
                                    style: GoogleFonts.montserrat(
                                        textStyle:
                                            const TextStyle(fontSize: 10)))),
                                DataCell(Text('25',
                                    style: GoogleFonts.montserrat(
                                        textStyle:
                                            const TextStyle(fontSize: 10)))),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('Inspected',
                                    style: GoogleFonts.montserrat(
                                        textStyle:
                                            const TextStyle(fontSize: 10)))),
                                DataCell(Text('35',
                                    style: GoogleFonts.montserrat(
                                        textStyle:
                                            const TextStyle(fontSize: 10)))),
                              ]),
                            ],
                          ),
                          DataTable(
                            headingRowHeight: 20,
                            columns: [
                              DataColumn(
                                  label: Text('Available Rooms',
                                      style: GoogleFonts.montserrat(
                                          textStyle: const TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700)))),
                              DataColumn(
                                  label: Text('104',
                                      style: GoogleFonts.montserrat(
                                          textStyle: const TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700)))),
                            ],
                            rows: [
                              DataRow(cells: [
                                DataCell(Text('Clean',
                                    style: GoogleFonts.montserrat(
                                        textStyle:
                                            const TextStyle(fontSize: 12)))),
                                DataCell(Text('30',
                                    style: GoogleFonts.montserrat(
                                        textStyle:
                                            const TextStyle(fontSize: 12)))),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('Dirty',
                                    style: GoogleFonts.montserrat(
                                        textStyle:
                                            const TextStyle(fontSize: 12)))),
                                DataCell(Text('25',
                                    style: GoogleFonts.montserrat(
                                        textStyle:
                                            const TextStyle(fontSize: 12)))),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('Inspected',
                                    style: GoogleFonts.montserrat(
                                        textStyle:
                                            const TextStyle(fontSize: 12)))),
                                DataCell(Text('35',
                                    style: GoogleFonts.montserrat(
                                        textStyle:
                                            const TextStyle(fontSize: 12)))),
                              ]),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.31,
                width: MediaQuery.of(context).size.width / 2.52,
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
                      padding: const EdgeInsets.only(left: 15.0, top: 10),
                      child: Text(
                        'Floor Status',
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 15)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GuageIndicator(
                            value: 100,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    color: AppColors.green1,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Completed',
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle()),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                color: Color(0xFFD9DEEB),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Yet to complete',
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle()),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
