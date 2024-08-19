import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_vendor/widgets/button.dart';
import 'package:hotel_vendor/widgets/textfield.dart';

class HotelInformation extends StatelessWidget {
  final TextEditingController _infoController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();
  final TextEditingController _hotelemailController = TextEditingController();
  HotelInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 20, right: 20),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Basic Information',
                  style: GoogleFonts.montserrat(
                      textStyle:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
                ),
                SizedBox(
                  height: 20,
                ),
                MyTextField(
                    height: 35,
                    hintText: 'Stay/Hotel Name',
                    controller: _infoController,
                    obscureText: false),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Contact Details',
                  style: GoogleFonts.montserrat(
                      textStyle:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
                ),
                SizedBox(
                  height: 30,
                ),
                MyTextField(
                    height: 35,
                    hintText: 'Contact Number',
                    controller: _contactController,
                    obscureText: false),
                SizedBox(
                  height: 30,
                ),
                MyTextField(
                    height: 35,
                    hintText: ' Hotel Email Address',
                    controller: _hotelemailController,
                    obscureText: false),
                SizedBox(
                  height: 50,
                ),
                MyButton(
                    text: 'Next',
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: 50,
                    onPressed: () {})
              ],
            ),
          ),
        ));
  }
}
