import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_vendor/components/dashboard_header.dart';
import 'package:hotel_vendor/screens/dashboard/dashboard_column1.dart';
import 'package:hotel_vendor/screens/dashboard/dashboard_column2.dart';
import 'package:hotel_vendor/screens/dashboard/dashboard_column3.dart';
import 'package:hotel_vendor/screens/dashboard/dashboard_column4.dart';
import 'package:hotel_vendor/theme/colors.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: const [
          DashboardHeader(
            text: 'Dashboard',
          ),
          SizedBox(
            height: 10,
          ),
          DashboardColumn1(),
          SizedBox(
            height: 10,
          ),
          DashboardColumn2(),
          DashboardColumn3(),
          // DashboardColumn4()
        ],
      ),
    );
  }
}
