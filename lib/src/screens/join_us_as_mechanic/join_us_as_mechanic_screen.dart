import 'package:flutter/material.dart';
import 'package:hukum_janab/src/const/colors.dart';
import 'package:hukum_janab/src/const/images.dart';

class JoinUsAsMechanicScreen extends StatefulWidget {
  const JoinUsAsMechanicScreen({super.key});

  @override
  State<JoinUsAsMechanicScreen> createState() => _JoinUsAsMechanicScreenState();
}

class _JoinUsAsMechanicScreenState extends State<JoinUsAsMechanicScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Join Us As Mechanic",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: primaryColor,
      ),
      body: Column(
        children: [
          Container(
            width: size.width,
            height: size.height * 0.2,
            color: primaryColor,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: CircleAvatar(
                      radius: 90,
                      backgroundImage: AssetImage(appLogo),
                    ),
                  ),
                ),
                Positioned(
                  top: 25,
                  left: size.width * 0.7,
                  child: const Icon(
                    Icons.camera,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
