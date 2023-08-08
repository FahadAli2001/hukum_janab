import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hukum_janab/src/const/colors.dart';
import 'package:hukum_janab/src/const/images.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: SizedBox(
                    width: 300, height: 170, child: Image.asset(appLogo))),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: TextField(
                decoration: InputDecoration(hintText: "Email"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Password",
                    suffixIcon: Icon(Icons.remove_red_eye)),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 170,
              height: 45,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  spreadRadius: 1,
                  blurRadius: 0.5,
                  offset:
                      const Offset(0, 02), // changes the position of the shadow
                ),
              ], color: primaryColor, borderRadius: BorderRadius.circular(30)),
              child: const Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "FORGOT YOUR PASSWORD?",
              style: TextStyle(
                color: primaryColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "SIGN UP WITH EMAIL",
              style: TextStyle(
                color: primaryColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "SKIP FOR NOW",
              style: TextStyle(
                color: primaryColor,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            const Text(
              "Sign up / Sign in with",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const FaIcon(
                    FontAwesomeIcons.google,
                    color: Colors.deepOrange,
                  ),
                  FaIcon(
                    FontAwesomeIcons.facebook,
                    color: Colors.blue.shade700,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
