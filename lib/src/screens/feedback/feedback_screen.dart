import 'package:flutter/material.dart';
import 'package:hukum_janab/src/const/colors.dart';
import 'package:hukum_janab/src/screens/my_feedback/my_feedback_screen.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  bool suggestions = true;
  bool complaints = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          "Feedback",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyFeedbackScreen()));
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Icon(
                Icons.message,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Column(
            children: [
              Container(
                width: size.width,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          suggestions = true;
                          complaints = false;
                        });
                      },
                      child: Container(
                        width: size.width * 0.46,
                        color:
                            suggestions == true ? primaryColor : Colors.white,
                        child: Center(
                          child: Text(
                            "SUGGESTIONS",
                            style: TextStyle(
                              color: suggestions == true
                                  ? Colors.white
                                  : primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          suggestions = false;
                          complaints = true;
                        });
                      },
                      child: Container(
                        width: size.width * 0.46,
                        color: complaints == true ? primaryColor : Colors.white,
                        child: Center(
                          child: Text(
                            "COMPLAINTS",
                            style: TextStyle(
                                color: complaints == true
                                    ? Colors.white
                                    : primaryColor),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: TextField(
                  maxLines: 7,
                  decoration: InputDecoration(
                    hintText: "Enter Your Feedback",
                  ),
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Container(
                  width: size.width * 0.8,
                  height: 40,
                  color: primaryColor,
                  child: const Center(
                    child: Text(
                      "Submit Feedback",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
