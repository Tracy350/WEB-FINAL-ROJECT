import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_vendor/components/login_hotel_type.dart';
import 'package:hotel_vendor/screens/hotel_type_screen.dart';
import 'package:hotel_vendor/theme/colors.dart';
import 'package:hotel_vendor/widgets/location_textfield.dart';
import 'package:hotel_vendor/widgets/textfield.dart';

class SelectLocation extends StatelessWidget {
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _locationNameController = TextEditingController();

  SelectLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        flex: 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Select Location',
              style: GoogleFonts.montserrat(
                textStyle:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            MyTextField(
                height: 50,
                hintText: 'Hotel Name',
                controller: _locationNameController,
                obscureText: false),
            const SizedBox(
              height: 10,
            ),
            LocationTextField(
                prefixIcon: const Icon(Icons.location_city),
                height: 50,
                hintText: 'Hotel Location',
                controller: _locationController,
                obscureText: false),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HotelTypeScreen()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.green1,
                ),
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.05,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text('Continue',
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
