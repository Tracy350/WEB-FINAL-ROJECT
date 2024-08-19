import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_vendor/theme/colors.dart';

class MyButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final void Function()? onPressed;
  const MyButton(
      {super.key,
      required this.text,
      required this.width,
      required this.height,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: width,
      height: height,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      color: AppColors.green1,
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.montserrat(
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
