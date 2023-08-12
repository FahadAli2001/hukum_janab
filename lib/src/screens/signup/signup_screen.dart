import 'package:flutter/material.dart';
import 'package:hukum_janab/src/const/colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
      ),
      body: Column(children: [
        Container(
          width: size.width,
          height: size.height * 0.2,
          color: primaryColor,
          child: Center(
            child: Text(
              "Sign Up",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.07),
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.08,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 70),
          child: TextField(
            decoration: InputDecoration(
              hintText: "ENTER FULL NAME*",
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 70),
          child: TextField(
            decoration: InputDecoration(
              hintText: "ENTER EMAIL*",
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 70),
          child: TextField(
            decoration: InputDecoration(
              hintText: "ENTER PHONE*",
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 70),
          child: TextField(
            decoration: InputDecoration(
                hintText: "ENTER PASSWORD",
                suffixIcon: Icon(Icons.remove_red_eye)),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 70),
          child: TextField(
            decoration: InputDecoration(
                hintText: "CONFIRM PASSWORD",
                suffixIcon: Icon(Icons.remove_red_eye)),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          width: size.width,
          height: 50,
          color: primaryColor,
          child: Center(
            child: Text(
              "Sign Up",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.05),
            ),
          ),
        )
      ]),
    );
  }
}
