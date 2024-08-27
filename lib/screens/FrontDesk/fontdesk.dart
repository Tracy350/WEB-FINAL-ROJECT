import 'package:cart_stepper/cart_stepper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_vendor/components/guest_header.dart';
import 'package:hotel_vendor/screens/FrontDesk/frontdesk_table.dart';
import 'package:hotel_vendor/theme/colors.dart';
import 'package:hotel_vendor/widgets/button.dart';
import 'package:hotel_vendor/widgets/normal_button.dart';

class FrontDesk extends StatefulWidget {
  FrontDesk({super.key});

  @override
  State<FrontDesk> createState() => _FrontDeskState();
}

class _FrontDeskState extends State<FrontDesk> {
  final TextEditingController _checkIncontroller = TextEditingController();

  final TextEditingController _checkOutController = TextEditingController();

  int _counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const GuestHeader(text: 'FrontDesk'),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.33,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          NormalButton(
                              text: 'All rooms',
                              width: 100,
                              height: 40,
                              onPressed: () {}),
                          const SizedBox(width: 20),
                          NormalButton(
                              text: 'Single',
                              width: 100,
                              height: 40,
                              onPressed: () {}),
                          const SizedBox(width: 20),
                          NormalButton(
                              text: 'Double',
                              width: 100,
                              height: 40,
                              onPressed: () {}),
                          const SizedBox(width: 20),
                          NormalButton(
                              text: 'All rooms',
                              width: 100,
                              height: 40,
                              onPressed: () {}),
                          const SizedBox(width: 20),
                          NormalButton(
                              text: 'VIP',
                              width: 100,
                              height: 40,
                              onPressed: () {}),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Check In',
                                style: GoogleFonts.montserrat(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w600)),
                              ),
                              Container(
                                width: 200,
                                child: TextFormField(
                                  controller: _checkIncontroller,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding:
                                          EdgeInsetsDirectional.symmetric(
                                              vertical: 15.0, horizontal: 20),
                                      hintText: 'Check In',
                                      hintStyle: TextStyle(
                                          color: AppColors.hinttext,
                                          fontSize: 15),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.grey)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: AppColors.green1)),
                                      filled: true,
                                      fillColor: AppColors.inputinactive,
                                      suffixIcon: Icon(Icons.calendar_month)),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 30),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Check Out',
                                style: GoogleFonts.montserrat(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w600)),
                              ),
                              Container(
                                width: 200,
                                child: TextFormField(
                                  controller: _checkOutController,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding:
                                          EdgeInsetsDirectional.symmetric(
                                              vertical: 15.0, horizontal: 20),
                                      hintText: 'Check Out',
                                      hintStyle: TextStyle(
                                          color: AppColors.hinttext,
                                          fontSize: 15),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.grey)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: AppColors.green1)),
                                      filled: true,
                                      fillColor: AppColors.inputinactive,
                                      suffixIcon: Icon(Icons.calendar_month)),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.35),
                          MyButton(
                              text: 'Check Availability',
                              width: 200,
                              height: 50,
                              onPressed: () {})
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Adult',
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.w600)),
                                  ),
                                  Text(
                                    'Older than 12 years',
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.w500)),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              CartStepperInt(
                                value: _counter,
                                style: CartStepperStyle(
                                  activeBackgroundColor: AppColors.green1,
                                ),
                                didChangeCount: (count) {
                                  setState(() {
                                    _counter = count;
                                  });
                                },
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Adult',
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.w600)),
                                  ),
                                  Text(
                                    'Older than 12 years',
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.w500)),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              CartStepperInt(
                                value: _counter,
                                style: CartStepperStyle(
                                  activeBackgroundColor: AppColors.green1,
                                ),
                                didChangeCount: (count) {
                                  setState(() {
                                    _counter = count;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              FrontdeskTable()
            ],
          ),
        ),
      ),
    );
  }
}
