import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hukum_janab/src/const/colors.dart';
import 'package:hukum_janab/src/const/images.dart';
import 'package:hukum_janab/src/customs_widgets/dashboard_drawer/dashboard_drawer.dart';
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
  List  serviceName = const [
    "Emergency Services",
    "Car Mechanic",
    "Bike Mechanic",
    "Generator Mechanic",
    "Car Towing Recovery",
    "       UPS   ",
    "Car Wash",
    "AC Technician",
    "Buy Inspection",
    "Scanning",
    "Vehical Insurance",
    "Dis-infection Service",
    "Home applinces Repairing",
    "Key Maker",
    "More",
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        // leading: FaIcon(FontAwesomeIcons.bars),
        title: const Text(
          "Hukum Janab",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
      ),
      drawer: const DashboardDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Column(
            children: [
              Container(
                width: size.width,
                height: size.height * 0.3,
                // color: Colors.amber,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Image.asset(
                        appPoster,
                        fit: BoxFit.fill,
                        width: 600,
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
                  height: size.height * 0.07,
                  // color: primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * 0.05,
                        width: size.width * 0.45,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withOpacity(0.3), // Shadow color
                              spreadRadius: 2, // Spread radius
                              blurRadius: 5, // Blur radius
                              offset: const Offset(0, 3), // Shadow position
                            ),
                          ],
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                                child: Icon(
                              FontAwesomeIcons.phone,
                              size: 15,
                              color: Colors.white,
                            )),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "Call",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: size.height * 0.05,
                        width: size.width * 0.45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withOpacity(0.3), // Shadow color
                              spreadRadius: 2, // Spread radius
                              blurRadius: 5, // Blur radius
                              offset: const Offset(0, 3), // Shadow position
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            "Refer a friend",
                            style: TextStyle(
                              color: Colors.black,
                              //  fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
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
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ServicesDetailPage(
                                    serviceName: serviceName[i],
                                  )));
                    },
                    child: SizedBox(
                      width: size.width * 0.9,
                      height: 70,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        elevation: 20,
                        child: ListTile(
                          leading: icons[i],
                          title: Text(
                            serviceName[i],
                            style: const TextStyle(fontSize: 14),
                          ),
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
