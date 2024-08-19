import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminReviewCard extends StatelessWidget {
  const AdminReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5))),
        child: ListTile(
          leading: const CircleAvatar(
            backgroundImage: AssetImage(
              'assets/profile.jpg',
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Adjoa Mensah',
                style: GoogleFonts.montserrat(
                    textStyle:
                        const TextStyle(fontWeight: FontWeight.w600, fontSize: 10)),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text(
                    '4.0',
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(color: Colors.grey, fontSize: 12)),
                  )
                ],
              )
            ],
          ),
          subtitle: Text(
            'Great location, beautiful surrounding atmosphere, great staff. Most friendly and helpful receptionist and staff ever, lovely and great first impression of hotel. ',
            style: GoogleFonts.montserrat(textStyle: const TextStyle(fontSize: 10)),
          ),
        ),
      ),
    );
  }
}
