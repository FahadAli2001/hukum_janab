import 'package:flutter/material.dart';
import 'package:hukum_janab/src/const/colors.dart';
import 'package:hukum_janab/src/const/images.dart';

class DashboardDrawer extends StatelessWidget {
  const DashboardDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      child: Column(
        children: [
          Container(
            color: primaryColor,
            width: size.width,
            height: size.height * 0.22,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage(appLogo),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Login / Signup",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
