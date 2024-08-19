import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_vendor/theme/colors.dart';

class NormalButton extends StatefulWidget {
  final String text;
  final double width;
  final double height;
  final String? color;
  final String? icon;
  final void Function()? onPressed;
  const NormalButton(
      {super.key,
      this.color,
      this.icon,
      required this.text,
      required this.width,
      required this.height,
      required this.onPressed});

  @override
  State<NormalButton> createState() => _NormalButtonState();
}

class _NormalButtonState extends State<NormalButton> {
  bool _isPressed = false;

  void _handlePressed() {
    setState(() {
      _isPressed = !_isPressed;
    });
    if (widget.onPressed != null) {
      widget.onPressed!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: _handlePressed,
      minWidth: widget.width,
      height: widget.height,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
        side: BorderSide(
          color: _isPressed ? AppColors.green1 : Colors.grey,
        ),
      ),
      child: Center(
        child: Text(
          widget.text,
          style: GoogleFonts.montserrat(
            textStyle:
                TextStyle(color: _isPressed ? AppColors.green1 : Colors.grey),
          ),
        ),
      ),
    );
  }
}
