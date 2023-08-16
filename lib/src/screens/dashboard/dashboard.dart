import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hukum_janab/src/const/colors.dart';
import 'package:hukum_janab/src/const/images.dart';
import 'package:hukum_janab/src/customs_widgets/dashboard_drawer/dashboard_drawer.dart';

import 'package:hukum_janab/src/screens/notifications/notifications_screen.dart';
import 'package:hukum_janab/src/screens/servicesDetailPage/services_detail_page.dart';

class Dasboard extends StatefulWidget {
  const Dasboard({super.key});

  @override
  State<Dasboard> createState() => _DasboardState();
}

class _DasboardState extends State<Dasboard> {
  List<FaIcon> icons = const [
    FaIcon(
      FontAwesomeIcons.triangleExclamation,
      color: Colors.red,
    ),
    FaIcon(
      FontAwesomeIcons.wrench,
      color: Colors.grey,
    ),
    FaIcon(
      FontAwesomeIcons.motorcycle,
      color: Colors.grey,
    ),
    FaIcon(
      FontAwesomeIcons.plugCircleBolt,
      color: Colors.green,
    ),
    FaIcon(
      FontAwesomeIcons.carBurst,
      color: Colors.purple,
    ),
    FaIcon(
      FontAwesomeIcons.solidLightbulb,
      color: Colors.yellow,
    ),
    FaIcon(
      FontAwesomeIcons.water,
      color: Colors.blue,
    ),
    FaIcon(
      FontAwesomeIcons.snowflake,
      color: Colors.blue,
    ),
    FaIcon(
      FontAwesomeIcons.snowflake,
      color: Colors.blue,
    ),
    FaIcon(
      FontAwesomeIcons.magnifyingGlass,
      color: Colors.brown,
    ),
    FaIcon(
      FontAwesomeIcons.lockOpen,
      color: Colors.black12,
    ),
    FaIcon(
      FontAwesomeIcons.sprayCan,
      color: Colors.yellow,
    ),
    FaIcon(
      FontAwesomeIcons.blender,
      color: Colors.orange,
    ),
    FaIcon(
      FontAwesomeIcons.key,
      color: Colors.pink,
    ),
    FaIcon(
      FontAwesomeIcons.ellipsis,
      color: Colors.deepPurple,
    ),
  ];
  List<Text> serviceName = const [
    Text(
      "Emergency Services",
      style: TextStyle(fontSize: 14),
    ),
    Text(
      "Car Mechanic",
      style: TextStyle(fontSize: 14),
    ),
    Text(
      "Bike Mechanic",
      style: TextStyle(fontSize: 14),
    ),
    Text(
      "Generator Mechanic",
      style: TextStyle(fontSize: 14),
    ),
    Text(
      "Car Towing Recovery",
      style: TextStyle(fontSize: 14),
    ),
    Text(
      "       UPS   ",
      style: TextStyle(fontSize: 14),
    ),
    Text(
      "Car Wash",
      style: TextStyle(fontSize: 14),
    ),
    Text(
      "AC Technician",
      style: TextStyle(fontSize: 14),
    ),
    Text(
      "Buy Inspection",
      style: TextStyle(fontSize: 14),
    ),
    Text(
      "Scanning",
      style: TextStyle(fontSize: 14),
    ),
    Text(
      "Vehical Insurance",
      style: TextStyle(fontSize: 14),
    ),
    Text(
      "Dis-infection Service",
      style: TextStyle(fontSize: 14),
    ),
    Text(
      "Home applinces Repairing",
      style: TextStyle(fontSize: 14),
    ),
    Text(
      "Key Maker",
      style: TextStyle(fontSize: 14),
    ),
    Text(
      "More",
      style: TextStyle(fontSize: 14),
    )
  ];
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
                    ],
                  ),
                ),
              ),
              //
              for (var i = 0; i < serviceName.length; i++) ...[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ServicesDetailPage()));
                    },
                    child: SizedBox(
                      width: size.width,
                      height: 70,
                      child: Card(
                        elevation: 10,
                        child: ListTile(
                          leading: icons[i],
                          title: serviceName[i],
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ]
            ],
          ),
        ),
      ),
    );
  }
}
