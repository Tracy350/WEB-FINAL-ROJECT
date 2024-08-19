import 'package:flutter/material.dart';
import 'package:hotel_vendor/screens/adminscreen.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: ValueListenableBuilder(
          valueListenable: selectedIndex,
          builder: (ctx, index, _) => Column(
            children: [
              const SizedBox(height: 30),
              Image.asset(
                'assets/Vector.png',
                height: 120,
              ),
              const SizedBox(height: 30),
              DrawerListTile(
                title: 'Dashboard',
                image: 'assets/icons/home.png',
                isSelected: index == 0,
                press: () => selectedIndex.value = 0,
              ),
              DrawerListTile(
                title: 'Guest',
                image: 'assets/icons/guest.png',
                isSelected: index == 1,
                press: () => selectedIndex.value = 1,
              ),
              DrawerListTile(
                title: 'Rooms',
                image: 'assets/icons/room.png',
                isSelected: index == 2,
                press: () => selectedIndex.value = 2,
              ),
              DrawerListTile(
                title: 'Deal',
                image: 'assets/icons/deal.png',
                isSelected: index == 3,
                press: () => selectedIndex.value = 3,
              ),
              DrawerListTile(
                title: 'Rate',
                image: 'assets/icons/rate.png',
                isSelected: index == 4,
                press: () => selectedIndex.value = 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
