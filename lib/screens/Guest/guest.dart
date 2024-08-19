import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_vendor/components/guest_header.dart';
import 'package:hotel_vendor/screens/Guest/guest_table.dart';
import 'package:hotel_vendor/components/dashboard_header.dart';
import 'package:hotel_vendor/widgets/normal_button.dart';

class Guest extends StatelessWidget {
  const Guest({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            GuestHeader(text: 'Guest'),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                NormalButton(
                    text: 'Check in', width: 100, height: 40, onPressed: () {}),
                SizedBox(
                  width: 30,
                ),
                NormalButton(
                    text: 'Check out',
                    width: 100,
                    height: 40,
                    onPressed: () {}),
                Spacer(),
                NormalButton(
                    text: 'Filter', width: 100, height: 50, onPressed: () {})
                //put the filter and search room number here
              ],
            ),
            SizedBox(
              height: 30,
            ),
            GuestTable()
          ],
        ),
      ),
    );
  }
}
