import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_vendor/components/login1.dart';
import 'package:hotel_vendor/providers/authstate_provider.dart';
import 'package:hotel_vendor/screens/location_screen.dart';
import 'package:hotel_vendor/theme/colors.dart';
import 'package:hotel_vendor/utils/constants.dart';
import 'package:hotel_vendor/widgets/button.dart';
import 'package:hotel_vendor/widgets/checkbox.dart';
import 'package:hotel_vendor/widgets/square_tile.dart';
import 'package:hotel_vendor/widgets/textfield.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _Login1State();
}

class _Login1State extends State<SignUp> {
  bool weakPassword = false;
  String? _emailError;
  String? _passwordError;
  final bool _isPasswordVisible = false;

  Future<bool> signup(
      String emailAddress, String password, BuildContext context) async {
    try {
      setState(() {
        isLoading = true;
      });
      // Logger().d([emailAddress, password]);
      final credential = await mAuth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      Logger().d(credential);
      // Check if sign up is successful
      if (credential.user != null) {
        // EmailProvider emailProvider =
        //     Provider.of<EmailProvider>(context, listen: false);
        // emailProvider.setEmail = emailAddress;
        await firestore.collection("admins").doc(credential.user?.uid).set({
          "uid": credential.user?.uid,
          "email": credential.user?.email,
          "firstname": _fNameController.text.trim(),
          "lastname": _lNameController.text.trim()
        });

        setState(() {
          isLoading = false;
        });
        // Now you should be able to see the new user in Firebase console
        return Future.value(true);
      }
    } on FirebaseAuthException catch (e) {
      setState(() {
        isLoading = false;
      });
      if (e.code == 'Weak-Password') {
      } else if (e.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('The account already exists for that email.')));
      }
      Logger().d(e.message);
    } catch (e) {
      Logger().d(e);
    }

    return Future.value(false);
  }

  bool isLoading = false;
  late double height;
  late double width;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _fNameController = TextEditingController();
  final TextEditingController _lNameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   setState(() {});
    // });
  }

  @override
  Widget build(BuildContext context) {
    AuthStateProvider authStateProvider =
        Provider.of<AuthStateProvider>(context, listen: false);

    double width = MediaQuery.of(context).size.width;
    return Expanded(
      flex: 2,
      child: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/Vector.png',
                scale: 2,
              ),
            ),
            Center(
              child: Text(
                'Create an account',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            MyTextField(
              height: 35,
              hintText: 'First Name',
              controller: _fNameController,
              obscureText: false,
            ),
            const SizedBox(height: 20.0),
            MyTextField(
              height: 35,
              hintText: 'Last Name',
              controller: _lNameController,
              obscureText: false,
            ),
            const SizedBox(height: 20.0),
            MyTextField(
              height: 35,
              hintText: 'Email',
              obscureText: false,
              controller: _emailController,
            ),
            const SizedBox(height: 20.0),
            MyTextField(
              height: 35,
              hintText: 'Password',
              controller: _pwController,
              obscureText: true,
            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                const MyCheckBox(
                  text: 'Remember me',
                ),
                const Spacer(),
                Text(
                  'Recover Password',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      color: AppColors.green1,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Center(
              child: MyButton(
                width: width,
                height: MediaQuery.of(context).size.height * 0.06,
                text: 'Sign Up',
                onPressed: ()
                    //              {
                    //                Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const LocationScreen()),
                    // );
                    //             }
                    async {
                  bool signUpSuccess = await signup(
                    _emailController.text.trim(),
                    _pwController.text.trim(),
                    context,
                  );
                  if (signUpSuccess) {
                    // Navigate to HotelSelectionScreen after successful sign-up
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LocationScreen()),
                    );
                  }
                },
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Expanded(
            //       child: Divider(
            //         thickness: 0.5,
            //         color: Colors.grey[400],
            //       ),
            //     ),
            //     const Padding(
            //       padding: EdgeInsets.symmetric(horizontal: 15.0),
            //       child: Text('or Sign Up With'),
            //     ),
            //     Expanded(
            //       child: Divider(
            //         thickness: 0.5,
            //         color: Colors.grey[400],
            //       ),
            //     ),
            //   ],
            // ),
            // const Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     SquareTile(svgPath: 'assets/icons/google.svg'),
            //     SquareTile(svgPath: 'assets/icons/facebook.svg'),
            //   ],
            // ),
            const Spacer(),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: GoogleFonts.montserrat(),
                  ),
                  InkWell(
                    onTap: () {
                      authStateProvider.toggleAuthPage();
                    },
                    child: Text(
                      'Login',
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: AppColors.green1,
                              fontWeight: FontWeight.w500)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
