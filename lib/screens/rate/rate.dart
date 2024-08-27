import 'package:flutter/cupertino.dart';
import 'package:hotel_vendor/components/guest_header.dart';
import 'package:hotel_vendor/screens/rate/rate_table.dart';
import 'package:hotel_vendor/widgets/filled_button.dart';
import 'package:hotel_vendor/widgets/normal_button.dart';

class Rate extends StatelessWidget {
  const Rate({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const GuestHeader(text: 'Rate'),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Spacer(),
                MyFilledButton(
                    text: 'Add rate', width: 150, height: 40, onPressed: () {}),
                const SizedBox(
                  width: 20,
                ),
                NormalButton(
                  text: 'Filter', width: 100, height: 40,
                  onPressed: () {}, //icon: Icons.,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const RateTable()
          ],
        ),
      ),
    );
  }
}
