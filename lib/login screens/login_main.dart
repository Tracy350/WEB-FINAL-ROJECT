import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:hotel_vendor/login%20screens/login1.dart';
import 'package:hotel_vendor/components/signup.dart';
import 'package:hotel_vendor/login%20screens/login_form_screen.dart';
import 'package:hotel_vendor/providers/authstate_provider.dart';
import 'package:hotel_vendor/screens/adminscreen.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late double height;
  late double width;
  bool isSignUp = true;
  bool showLoginSection = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        height = MediaQuery.of(context).size.height;
        width = MediaQuery.of(context).size.width;
      });
    });
  }

  void continueButtonPressed() {
    setState(() {
      showLoginSection = false;
      // Navigate to HomeScreen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const AdminScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    AuthStateProvider authStateProvider =
        Provider.of<AuthStateProvider>(context, listen: true);
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ImageSlideshow(
                  width: double.infinity,
                  autoPlayInterval: 3000,
                  isLoop: true,
                  children: [
                    Image.asset(
                      'assets/hotel1.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/hotel2.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/hotel3.jpg',
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: showLoginSection
                    ? (authStateProvider.isSignedUp
                        ? const SignUp()
                        : const Login1())
                    : const LoginFormScreen(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
