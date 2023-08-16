import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hukum_janab/src/const/colors.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          "Contact Us",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                text: 'Hukumjanab.pl | Pakistan ',
                style: TextStyle(color: primaryColor, fontSize: 16),
                children: const <TextSpan>[
                  TextSpan(
                    text: 'xxxxxxxxxxxxxxxxyyyyyyyyyyyyyyyyyyyyzzzzzzzzzzzzzz',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.purpleAccent,
              ),
              title: Text("hukumjanab@gmail.com"),
            ),
            const ListTile(
              leading: FaIcon(
                FontAwesomeIcons.phone,
                color: Colors.green,
              ),
              title: Text("+92 111 222 555"),
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.whatsapp,
                color: Colors.green.shade800,
              ),
              title: const Text("+92 111 222 555"),
            ),
            const ListTile(
              leading: FaIcon(
                FontAwesomeIcons.facebook,
                color: Colors.blue,
              ),
              title: Text("facebook/hukumjanab"),
            ),
          ],
        ),
      ),
    );
  }
}
