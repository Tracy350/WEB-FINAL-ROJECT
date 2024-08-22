import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_vendor/components/login1.dart';
import 'package:hotel_vendor/components/login_hotel_type.dart';
import 'package:hotel_vendor/components/select_location.dart';
import 'package:hotel_vendor/components/side_menu.dart';
import 'package:hotel_vendor/firebase_options.dart';
import 'package:hotel_vendor/providers/authstate_provider.dart';
import 'package:hotel_vendor/screens/adminscreen.dart';
import 'package:hotel_vendor/screens/dashboard/dashboard_screen.dart';
import 'package:hotel_vendor/screens/hotel_type_screen.dart';
import 'package:hotel_vendor/screens/location_screen.dart';
import 'package:hotel_vendor/screens/login_main.dart';
import 'package:provider/provider.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // await FirebaseAppCheck.instance.activate(
  //   androidProvider: AndroidProvider.debug,
  //   appleProvider: AppleProvider.debug,
  // );
  // runApp(const MyApp());
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthStateProvider()),
        ChangeNotifierProvider(create: (_) => EmailProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthStateProvider(),
        )
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: HotelTypeScreen(),
          );
        },
      ),
    );
  }
}
