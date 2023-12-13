import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hukum_janab/src/const/colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: size.width,
            height: size.height,
          ),
          Container(
            width: size.width,
            height: size.height,
            color: primaryColor,
            child: Stack(children: [
              Positioned(
                top: 60,
                left: size.width * 0.35,
                right: 50,
                child: Text(
                  "HUKUM",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: size.width * 0.09),
                ),
              ),
              Positioned(
                top: 100,
                left: size.width * 0.35,
                right: 50,
                child: Text(
                  "JANAB",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: size.width * 0.09),
                ),
              ),
             Positioned(
              top: 50,
              left: 20,
              child:    GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child:const Icon(CupertinoIcons.back,color: Colors.white,
                size: 35,),
              ),
            )
            ]),
          ),
          Positioned(
            top: size.height * 0.2,
            child: Container(
              width: size.width,
              height: size.height,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Column(
                  children: [
                    SizedBox(
                      width: 50,
                      child: Divider(
                        color: Colors.grey.shade500,
                        thickness: 6,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Center(
                      child: Text(
                        "SignUp To Continue",
                        style: TextStyle(
                            fontSize: size.width * 0.07,
                            color: primaryColor,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                      Padding(
                      padding:const EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          labelText: "Email",
                          focusedBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color:
                                    primaryColor), // Border color when focused
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: primaryColor), // Border color when not focused
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                      Padding(
                      padding:const EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                            focusedBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color:
                                    primaryColor), // Border color when focused
                          ),
                          enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: primaryColor), // Border color when not focused
                          ),
                            labelText: "Password",
                            suffixIcon:const Icon(Icons.remove_red_eye)),
                      ),
                    ),
                     SizedBox(
                      height: size.height * 0.02,
                    ),
                      Padding(
                      padding:const EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                            focusedBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color:
                                    primaryColor), // Border color when focused
                          ),
                          enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: primaryColor), // Border color when not focused
                          ),
                            labelText: "Confirm Password",
                            suffixIcon:const Icon(Icons.remove_red_eye)),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        width: size.width,
                        height: 45,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 1,
                                blurRadius: 0.5,
                                offset: const Offset(0,
                                    02), // changes the position of the shadow
                              ),
                            ],
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Center(
                          child: Text(
                            "SignIn",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Row(
                        children: [
                          Text(
                                "Already have an account ?",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: primaryColor,
                                    ),
                              ),
                               GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                 child: Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: primaryColor,
                                      fontWeight: FontWeight.w900
                                      ),
                                                             ),
                               ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),);
   }
}
