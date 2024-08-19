import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_vendor/components/side_menu.dart';
import 'package:hotel_vendor/screens/Guest/guest.dart';
import 'package:hotel_vendor/screens/dashboard/dashboard_screen.dart';
import 'package:hotel_vendor/screens/deal/deal.dart';
import 'package:hotel_vendor/screens/rate/rate.dart';
import 'package:hotel_vendor/screens/rooms/roooms.dart';

ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);

class AdminScreen extends StatelessWidget {
  const AdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(child: SideMenu()),
            ValueListenableBuilder<int>(
              valueListenable: selectedIndex,
              builder: (ctx, index, _) => Expanded(
                flex: 5,
                child: _buildSelectedScreen(index),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSelectedScreen(int index) {
    switch (index) {
      case 0:
        return const DashboardScreen();
      case 1:
        return const Guest();
      case 2:
        return const Rooms();
      case 3:
        return const Deals();
       case 4:
        return const Rate();
      default:
        return DashboardScreen(); // or any default widget
    }
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    required this.title,
    required this.image,
    required this.press,
    this.isSelected = false,
  });

  final String title, image;
  final VoidCallback press;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selected: isSelected,
      selectedTileColor: isSelected ? Colors.grey.withOpacity(0.2) : null,
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: Image.asset(
        image,
        height: 25,
      ),
      minLeadingWidth: 50,
      title: Text(
        title,
        style: GoogleFonts.montserrat(
          textStyle: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
