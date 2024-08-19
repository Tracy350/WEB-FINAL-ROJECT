import 'package:flutter/material.dart';
import 'package:hotel_vendor/components/guest_header.dart';
import 'package:hotel_vendor/screens/Guest/guest_table.dart';
import 'package:hotel_vendor/widgets/normal_button.dart';

class Rooms extends StatelessWidget {
  const Rooms({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            GuestHeader(text: 'Room'),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                NormalButton(
                    text: 'All rooms',
                    width: 100,
                    height: 40,
                    onPressed: () {}),
                SizedBox(
                  width: 30,
                ),
                NormalButton(
                    text: 'Available room',
                    width: 100,
                    height: 40,
                    onPressed: () {}),
                SizedBox(
                  width: 30,
                ),
                NormalButton(
                    text: 'Booked', width: 100, height: 40, onPressed: () {}),

                Spacer(),
                NormalButton(
                    //color: ,
                    text: 'Add room',
                    width: 100,
                    height: 40,
                    onPressed: () {})
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
