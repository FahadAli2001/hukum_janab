import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hukum_janab/src/const/images.dart';
import 'package:hukum_janab/src/screens/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 4), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Image.asset(appLogo)),
    );
  }
}
