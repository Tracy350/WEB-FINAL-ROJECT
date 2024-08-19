import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_vendor/theme/colors.dart';
import 'package:hotel_vendor/widgets/button.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Text(
                  text,
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const Spacer(
                flex: 2,
              ),
              const Expanded(
                flex: 5,
                child: SearchField(),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 8, left: 8),
                child: Icon(Icons.notifications_active_outlined),
              ),
              const ProfileCard()
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Friday, November 18, 2022',
                style: GoogleFonts.montserrat(),
              ),
              const Spacer(),
              MyButton(
                text: 'Create Booking',
                width: MediaQuery.of(context).size.width * 0.1,
                height: 40,
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 3),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.greenAccent),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage(
              'assets/profile.jpg',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text('Daniel Doe', style: GoogleFonts.montserrat()),
          ),
          const Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorOpacityAnimates: true,
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: const EdgeInsetsDirectional.symmetric(
          vertical: 15.0,
          horizontal: 10.0,
        ),
        hintText: 'Search',
        hintStyle: const TextStyle(color: AppColors.hinttext),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(16 * 0.75),
            decoration: BoxDecoration(
              color: AppColors.green1,
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.inputinactive,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.green1,
          ),
        ),
        filled: true,
        fillColor: AppColors.inputinactive,
      ),
    );
  }
}
