import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_vendor/theme/colors.dart';

class MyFilledButton extends StatefulWidget {
  final String text;
  final double width;
  final double height;
  final String? color;
  final IconData? icon; // Changed to IconData for icons
  final void Function()? onPressed;

  const MyFilledButton({
    super.key,
    this.color,
    this.icon,
    required this.text,
    required this.width,
    required this.height,
    required this.onPressed,
  });

  @override
  State<MyFilledButton> createState() => _MyFilledButtonState();
}

class _MyFilledButtonState extends State<MyFilledButton> {
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
    Color buttonColor= AppColors.green1;
    Color textColor =  Colors.white;

    return MaterialButton(
      color: buttonColor,
      onPressed: _handlePressed,
      minWidth: widget.width,
      height: widget.height,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (widget.icon != null) Icon(widget.icon, color: textColor, size: 16), // Adding icon if exists
          if (widget.icon != null) SizedBox(width: 8), // Spacing between icon and text
          Text(
            widget.text,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(color: textColor, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
