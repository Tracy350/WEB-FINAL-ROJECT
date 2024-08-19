import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_vendor/theme/colors.dart';

class TypeOptions extends StatefulWidget {
  final String text;
  const TypeOptions({super.key, required this.text});

  @override
  State<TypeOptions> createState() => _TypeOptionsState();
}

class _TypeOptionsState extends State<TypeOptions> {
  bool _isChecked = false;
  bool _isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 20, right: 20),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.bordercolor),
        ),
        child: MaterialButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.text,
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              Spacer(),
              Checkbox(
                value: _isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    _isChecked = value ?? false;
                  });
                },
                activeColor: AppColors.green1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
