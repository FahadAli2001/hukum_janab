import 'package:flutter/material.dart';

import '../../const/colors.dart';
import '../../const/images.dart';

class JoinUsAsVendorScreen extends StatefulWidget {
  const JoinUsAsVendorScreen({super.key});

  @override
  State<JoinUsAsVendorScreen> createState() => _JoinUsAsVendorScreenState();
}

class _JoinUsAsVendorScreenState extends State<JoinUsAsVendorScreen> {
  bool individual = true;
  bool shop = false;
  bool android = true;
  bool ios = false;
  bool simpleMobile = false;
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
      body: SingleChildScrollView(
        child: Column(
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
            ),
            //
            const SizedBox(
              height: 20,
            ),
            //
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
              child: TextField(
                decoration: InputDecoration(hintText: "Name"),
              ),
            ),
            //
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
              child: TextField(
                decoration: InputDecoration(hintText: "Phone No"),
              ),
            ),
            //
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
              child: TextField(
                decoration: InputDecoration(hintText: "NIC"),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Bike",
                    style: TextStyle(color: primaryColor),
                  ),
                  Switch(value: true, onChanged: (val) {})
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
              child: Divider(
                color: Colors.grey,
                height: 2,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tool",
                    style: TextStyle(color: primaryColor),
                  ),
                  Switch(value: true, onChanged: (val) {})
                ],
              ),
            ),
            //
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 2),
              child: Divider(
                color: Colors.grey,
                height: 2,
              ),
            ),

            //
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        individual = true;
                        shop = false;
                      });
                    },
                    child: Container(
                      color: individual == true ? primaryColor : Colors.white,
                      width: size.width * 0.45,
                      height: 40,
                      child: Center(
                        child: Text(
                          "INDIVIDUAL",
                          style: TextStyle(
                              color: individual == true
                                  ? Colors.white
                                  : primaryColor),
                        ),
                      ),
                    ),
                  ),
                  //
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        individual = false;
                        shop = true;
                      });
                    },
                    child: Container(
                      color: shop == true ? primaryColor : Colors.white,
                      width: size.width * 0.45,
                      height: 40,
                      child: Center(
                        child: Text(
                          "SHOP/GARAGE",
                          style: TextStyle(
                              color:
                                  shop == true ? Colors.white : primaryColor),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        android = true;
                        ios = false;
                        simpleMobile = false;
                      });
                    },
                    child: Container(
                      color: android == true ? primaryColor : Colors.white,
                      width: size.width * 0.3,
                      height: 40,
                      child: Center(
                        child: Text(
                          "Android",
                          style: TextStyle(
                              color: android == true
                                  ? Colors.white
                                  : primaryColor),
                        ),
                      ),
                    ),
                  ),
                  //
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        android = false;
                        ios = true;
                        simpleMobile = false;
                      });
                    },
                    child: Container(
                      color: ios == true ? primaryColor : Colors.white,
                      width: size.width * 0.3,
                      height: 40,
                      child: Center(
                        child: Text(
                          "IOS",
                          style: TextStyle(
                              color: ios == true ? Colors.white : primaryColor),
                        ),
                      ),
                    ),
                  ),
                  //
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        android = false;
                        ios = false;
                        simpleMobile = true;
                      });
                    },
                    child: Container(
                      color: simpleMobile == true ? primaryColor : Colors.white,
                      width: size.width * 0.3,
                      height: 40,
                      child: Center(
                        child: Text(
                          "Android",
                          style: TextStyle(
                              color: simpleMobile == true
                                  ? Colors.white
                                  : primaryColor),
                        ),
                      ),
                    ),
                  ),
                  //
                ],
              ),
            ),
            //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                width: size.width,
                height: 80,
                child: Row(
                  children: [
                    Container(
                      width: size.width * 0.87,
                      height: 40,
                      color: primaryColor,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_city,
                            color: Colors.white,
                          ),
                          Text(
                            "SELECT AREA",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 10, bottom: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Accessories",
                  style: TextStyle(color: primaryColor, fontSize: 20),
                ),
              ),
            ),
            //
            Divider(
              color: primaryColor,
              thickness: 1.5,
            ),
            //

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Container(
                width: size.width * 0.8,
                height: 40,
                color: primaryColor,
                child: const Center(
                    child: Text(
                  "Save",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
