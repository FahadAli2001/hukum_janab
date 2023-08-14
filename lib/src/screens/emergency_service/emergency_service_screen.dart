import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hukum_janab/src/const/colors.dart';

class EmergencyServiceScreen extends StatefulWidget {
  const EmergencyServiceScreen({super.key});

  @override
  State<EmergencyServiceScreen> createState() => _EmergencyServiceScreenState();
}

class _EmergencyServiceScreenState extends State<EmergencyServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
            child: FaIcon(
              FontAwesomeIcons.phone,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: const [
          TextField(
            decoration: InputDecoration(
                hintText: "Search Service",
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                )),
          )
        ],
      ),
    );
  }
}
