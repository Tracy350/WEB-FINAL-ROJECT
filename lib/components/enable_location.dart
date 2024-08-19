import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_vendor/widgets/button.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // Align children at the top and bottom
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/location.png'),
              Text(
                'Enable Location',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                'You need to enable location to browse stays near you',
                style: GoogleFonts.montserrat(),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          const SizedBox(
            height: 200,
          ),
          MyButton(
            text: 'Allow Location',
            width: MediaQuery.of(context).size.width * 0.3,
            height: 50,
            onPressed: () {},
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'Enter Manually',
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(color: Colors.grey)),
              ))
        ],
      ),
    );
  }
}
