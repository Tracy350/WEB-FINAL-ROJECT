import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_vendor/theme/colors.dart';

class TypeOptions extends StatefulWidget {
  final String text;
  final int value;
  final int groupValue;
  final ValueChanged<int?> onChanged;

  const TypeOptions({
    super.key,
    required this.text,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  State<TypeOptions> createState() => _TypeOptionsState();
}

class _TypeOptionsState extends State<TypeOptions> {
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
          onPressed: () {
            widget.onChanged(widget.value);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.text,
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              const Spacer(),
              Radio<int>(
                value: widget.value,
                groupValue: widget.groupValue,
                onChanged: (int? value) {
                  widget.onChanged(value);
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
