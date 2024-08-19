import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_vendor/theme/colors.dart';

class MyCheckBox extends StatefulWidget {
  final String text;
  const MyCheckBox({super.key, required this.text});

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: _isChecked,
          onChanged: (bool? value) {
            setState(() {
              _isChecked = value ?? false;
            });
          },
          activeColor: AppColors.green1,
        ),
        Text(
          widget.text,
          style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 12)),
        )
      ],
    );
  }
}
