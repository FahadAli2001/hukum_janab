import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hukum_janab/src/const/colors.dart';
import 'package:hukum_janab/src/const/images.dart';
import 'package:hukum_janab/src/customs_widgets/dashboard_drawer/dashboard_drawer.dart';
import 'package:hukum_janab/src/screens/more/more_screen.dart';
import 'package:hukum_janab/src/screens/notifications/notifications_screen.dart';

class Dasboard extends StatefulWidget {
  const Dasboard({super.key});

  @override
  State<Dasboard> createState() => _DasboardState();
}

class _DasboardState extends State<Dasboard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        // leading: FaIcon(FontAwesomeIcons.bars),
        title: const Text(
          "Dashboard",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationsScreen()));
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              child: FaIcon(
                FontAwesomeIcons.solidBell,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      drawer: const DashboardDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            children: [
              Container(
                width: size.width,
                height: size.height * 0.2,
                // color: Colors.amber,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Image.asset(
                        appPoster,
                      ),
                    );
                  },
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: size.width,
                  height: size.height * 0.05,
                  color: primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.phone,
                        color: Colors.white,
                        size: 18,
                      ),
                      Container(
                        width: size.width * 0.6,
                        decoration: BoxDecoration(
                            color: Colors.yellow.shade700,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Center(
                          child: Text(
                            "REFER A FRIEND",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ),
                      const Text(
                        "Rs 0",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
              //
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.triangleExclamation,
                          color: Colors.red,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Emergency Services",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    //
                    Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.wrench,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Car Mechanic",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    //
                    Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.motorcycle,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Bike Mechanic",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    //
                  ],
                ),
              ),
              //
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.plugCircleBolt,
                          color: Colors.green,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Generator Mechanic",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    //
                    Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.carBurst,
                          color: Colors.purple,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Car Towing Recovery",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    //
                    Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.solidLightbulb,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "       UPS   ",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    //
                  ],
                ),
              ),
              //
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.water,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Car Wash",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    //
                    Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.snowflake,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "AC Technician",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    //
                    Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.searchengin,
                          color: Colors.blueGrey,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Buy Inspection",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    //
                  ],
                ),
              ),
              //
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.magnifyingGlass,
                          color: Colors.brown,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Scanning",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    //
                    Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.lockOpen,
                          color: Colors.black12,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Vehical Insurance",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    //
                    Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.sprayCan,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Dis-infection Service",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    //
                  ],
                ),
              ),
              //
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.blender,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Home applinces Repairing",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    //
                    Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.key,
                          color: Colors.pink,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Key Maker",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    //
                    Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.ellipsis,
                          color: Colors.deepPurple,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "More",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    //
                  ],
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: size.width,
                  height: size.height * 0.05,
                  color: primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Our Blogs",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MoreScreen()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white)),
                              child: const Center(
                                child: Text(
                                  "More",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              //
            ],
          ),
        ),
      ),
    );
  }
}
