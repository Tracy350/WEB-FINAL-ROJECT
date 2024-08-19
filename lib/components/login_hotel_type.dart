import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_vendor/widgets/button.dart';
import 'package:hotel_vendor/widgets/hotel_type.dart';

class HotelType extends StatelessWidget {
  const HotelType({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "What would you like to List?",
            style: GoogleFonts.montserrat(
                textStyle: TextStyle(fontWeight: FontWeight.w600)),
          ),
          SizedBox(
            height: 70,
          ),
          TypeOptions(
            text: 'Hotel',
          ),
          TypeOptions(
            text: 'Resort',
          ),
          TypeOptions(
            text: 'Bungalow',
          ),
          TypeOptions(
            text: 'Dorm',
          ),
          TypeOptions(
            text: 'Cottage',
          ),
          TypeOptions(
            text: 'Apartment',
          ),
          SizedBox(
            height: 50,
          ),
        
          MyButton(
              text: 'Next',
              width: MediaQuery.of(context).size.width * 0.3,
              height: 50,
              onPressed: () {})
        ],
      )),
    );
  }
}
