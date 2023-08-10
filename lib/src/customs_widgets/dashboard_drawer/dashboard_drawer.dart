import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                  ),
                ],
              ),
            ),
          ),
          //
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 50,
            child: ListTile(
              leading: FaIcon(
                FontAwesomeIcons.person,
                color: primaryColor,
              ),
              title: Text(
                "My Profile",
                style: TextStyle(color: primaryColor),
              ),
            ),
          ),
          //
          SizedBox(
            height: 50,
            child: ListTile(
              leading: FaIcon(
                FontAwesomeIcons.message,
                color: primaryColor,
              ),
              title: Text(
                "Feedback",
                style: TextStyle(color: primaryColor),
              ),
            ),
          ),
          //
          SizedBox(
            height: 50,
            child: ListTile(
              leading: FaIcon(
                FontAwesomeIcons.locationPin,
                color: primaryColor,
              ),
              title: Text(
                "My Location",
                style: TextStyle(color: primaryColor),
              ),
            ),
          ),
          //
          SizedBox(
            height: 50,
            child: ListTile(
              leading: FaIcon(
                FontAwesomeIcons.car,
                color: primaryColor,
              ),
              title: Text(
                "Garage",
                style: TextStyle(color: primaryColor),
              ),
            ),
          ),
          //
          SizedBox(
            height: 50,
            child: ListTile(
              leading: FaIcon(
                FontAwesomeIcons.phone,
                color: primaryColor,
              ),
              title: Text(
                "Contact Us",
                style: TextStyle(color: primaryColor),
              ),
            ),
          ),
          //
          SizedBox(
            height: 50,
            child: ListTile(
              leading: FaIcon(
                FontAwesomeIcons.cloud,
                color: primaryColor,
              ),
              title: Text(
                "FAQ",
                style: TextStyle(color: primaryColor),
              ),
            ),
          ),
          //
          SizedBox(
            height: 50,
            child: ListTile(
              leading: FaIcon(
                FontAwesomeIcons.book,
                color: primaryColor,
              ),
              title: Text(
                "Booking List",
                style: TextStyle(color: primaryColor),
              ),
            ),
          ),
          //
          SizedBox(
            height: 50,
            child: ListTile(
              leading: FaIcon(
                FontAwesomeIcons.wrench,
                color: primaryColor,
              ),
              title: Text(
                "Join As Mechanic",
                style: TextStyle(color: primaryColor),
              ),
            ),
          ),
          //
          SizedBox(
            height: 50,
            child: ListTile(
              leading: FaIcon(
                FontAwesomeIcons.person,
                color: primaryColor,
              ),
              title: Text(
                "Join as vendor",
                style: TextStyle(color: primaryColor),
              ),
            ),
          ),
          //
          SizedBox(
            height: 50,
            child: ListTile(
              leading: FaIcon(
                FontAwesomeIcons.groupArrowsRotate,
                color: primaryColor,
              ),
              title: Text(
                "Join us as corporate",
                style: TextStyle(color: primaryColor),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.101,
          ),
          Stack(
            children: [
              Container(
                color: primaryColor,
                width: size.width,
                height: 50,
                child: const ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.arrowRightFromBracket,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Sign In",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
