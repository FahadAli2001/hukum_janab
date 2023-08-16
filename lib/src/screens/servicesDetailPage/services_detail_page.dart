import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../const/colors.dart';

class ServicesDetailPage extends StatefulWidget {
  const ServicesDetailPage({super.key});

  @override
  State<ServicesDetailPage> createState() => _ServicesDetailPageState();
}

class _ServicesDetailPageState extends State<ServicesDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: FaIcon(
              FontAwesomeIcons.phone,
              color: Colors.white,
              size: 20,
            ),
          )
        ],
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search Service",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
