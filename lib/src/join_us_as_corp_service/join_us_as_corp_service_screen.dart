import 'package:flutter/material.dart';
import 'package:hukum_janab/src/const/colors.dart';

class JoinUsAsCorpService extends StatefulWidget {
  const JoinUsAsCorpService({super.key});

  @override
  State<JoinUsAsCorpService> createState() => _JoinUsAsCorpServiceState();
}

class _JoinUsAsCorpServiceState extends State<JoinUsAsCorpService> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          "Join Us As Corp Service",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
              child: TextField(
                decoration: InputDecoration(hintText: "Name"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
              child: TextField(
                decoration: InputDecoration(hintText: "Company Name"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
              child: TextField(
                decoration: InputDecoration(hintText: "Phone No"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
              child: TextField(
                maxLines: 10,
                decoration: InputDecoration(hintText: "Requirments"),
              ),
            ),
            //
            CheckboxListTile(
              value: true,
              onChanged: (val) {},
              title: const Text("Car"),
            ),
            CheckboxListTile(
              value: true,
              onChanged: (val) {},
              title: const Text("Bike"),
            ),
            CheckboxListTile(
              value: true,
              onChanged: (val) {},
              title: const Text("Generator"),
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
