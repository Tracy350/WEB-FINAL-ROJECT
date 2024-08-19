import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_vendor/theme/colors.dart';

class LocationTextField extends StatelessWidget {
  final String hintText;
  final Widget prefixIcon;
  final int height;
  final TextEditingController controller;
  const LocationTextField(
      {super.key,
      required this.prefixIcon,
      required this.height,
      required this.hintText,
      required this.controller,
      required bool obscureText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: TextField(
        obscureText: false,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          prefixIconColor: AppColors.green1,
          border: InputBorder.none,
          contentPadding: EdgeInsetsDirectional.symmetric(vertical: 15.0),
          hintText: hintText,
          hintStyle: TextStyle(color: AppColors.hinttext, fontSize: 15),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.inputinactive)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.green1)),
          filled: true,
          fillColor: AppColors.inputinactive,
        ),
      ),
    );
  }
}
