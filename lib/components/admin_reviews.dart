import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_vendor/components/admin_reviews_card.dart';

class CustomerReview extends StatelessWidget {
  const CustomerReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.52,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey, // Adjust border color here
          width: 1, // Adjust border width here
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Customers Review',
                    style: GoogleFonts.montserrat(
                        textStyle:
                            const TextStyle(fontWeight: FontWeight.w700))),
                const Spacer(),
                Row(
                  children: [
                    Text('View More',
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: Colors.grey, fontSize: 10))),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: Colors.grey,
                        ))
                  ],
                ),
              ],
            ),
          ),
          SingleChildScrollView(
              child: Column(
                children: const [
                  AdminReviewCard(),
                  AdminReviewCard(),
                ],
              )),
        ],
      ),
    );
  }
}
