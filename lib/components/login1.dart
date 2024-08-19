import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_vendor/components/select_location.dart';
import 'package:hotel_vendor/providers/authstate_provider.dart';
import 'package:hotel_vendor/theme/colors.dart';
import 'package:hotel_vendor/widgets/button.dart';
import 'package:hotel_vendor/widgets/checkbox.dart';
import 'package:hotel_vendor/widgets/square_tile.dart';
import 'package:hotel_vendor/widgets/textfield.dart';
import 'package:provider/provider.dart';

class Login1 extends StatefulWidget {
  const Login1({super.key});

  @override
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  // late double height;
  // late double width;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  bool isLoading = true;

  @override
  void initState() {
    super.initState();
  }

  Future<void> signin(
      String emailAddress, String password, BuildContext context) async {
    try {
      setState(() {
        isLoading = true;
      });
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);

      if (credential.user != null) {
        setState(() {
          isLoading = false;
        });
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SelectLocation()));
      }
    } on FirebaseAuthException catch (e) {
      setState(() {
        isLoading = false;
      });
      if (e.code == 'invalid-credential') {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Invalid credential')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    AuthStateProvider authStateProvider =
        Provider.of<AuthStateProvider>(context, listen: false);
    return Scaffold(
      body: Container(
        height: height * 1,
        width: width * 1,
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
                'Welcome Back',
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
            const SizedBox(height: 20.0),
            Center(
              child: MyButton(
                  width: width,
                  height: MediaQuery.of(context).size.height * 0.05,
                  text: 'Login',
                  onPressed: () {
                    signin(_emailController.text.trim(),
                        _pwController.text.trim(), context);
                  }),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text('or Login With'),
                ),
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SquareTile(svgPath: 'assets/icons/google.svg'),
                SquareTile(svgPath: 'assets/icons/facebook.svg'),
              ],
            ),
            const Spacer(),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an account?',
                    style: GoogleFonts.montserrat(),
                  ),
                  InkWell(
                    onTap: () {
                      authStateProvider.toggleAuthPage();
                    },
                    child: Text(
                      'Sign up',
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
