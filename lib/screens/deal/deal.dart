import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_vendor/components/guest_header.dart';
import 'package:hotel_vendor/screens/deal/deals_table.dart';
import 'package:hotel_vendor/widgets/filled_button.dart';
import 'package:hotel_vendor/widgets/normal_button.dart';

class Deals extends StatelessWidget {
  const Deals({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const GuestHeader(text: 'Deal'),
            const SizedBox(height:20),
            Row(
              children: [
                NormalButton(
                    text: 'Ongoing', width: 100, height: 40, onPressed: () {}),
                const SizedBox(
                  width: 20,
                ),
                NormalButton(
                    text: 'Finished', width: 100, height: 40, onPressed: () {}),
                const Spacer(),
                MyFilledButton(
                    text: 'Add deal',
                    width: 150,
                    height: 40,
                    //color: ,
                    onPressed: () {}),
                    SizedBox(width: 10,),
                NormalButton(text: 'Filter', width: 100, height: 40, onPressed: (){}, //icon: Icons.,
                )
              ],
            ),
            SizedBox(height: 20,),
           DealsTable()
          ],
        ),
      ),
    );
  }
}
