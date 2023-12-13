import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hukum_janab/src/const/colors.dart';
import 'package:hukum_janab/src/const/images.dart';
import 'package:hukum_janab/src/screens/dashboard/dashboard.dart';
import 'package:hukum_janab/src/screens/signup/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
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
                        "Welcome",
                        style: TextStyle(
                            fontSize: size.width * 0.09,
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
                            "Login",
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
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.google,
                              color: Colors.orange,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Login With Google",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height*0.1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Row(
                        children: [
                          Text(
                                "Don't have an account ?",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: primaryColor,
                                    ),
                              ),
                               Text(
                                "SignUp",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: primaryColor,
                                    fontWeight: FontWeight.w900
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
      ),
      //   body: Padding(
      // padding: const EdgeInsets.symmetric(horizontal: 15),
      // child: Column(
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Center(
      //         child: SizedBox(
      //             width: 300, height: 170, child: Image.asset(appLogo))),
      //     const Padding(
      //       padding: EdgeInsets.symmetric(horizontal: 35),
      //       child: TextField(
      //         decoration: InputDecoration(hintText: "Email"),
      //       ),
      //     ),
      //     const Padding(
      //       padding: EdgeInsets.symmetric(horizontal: 35),
      //       child: TextField(
      //         decoration: InputDecoration(
      //             hintText: "Password",
      //             suffixIcon: Icon(Icons.remove_red_eye)),
      //       ),
      //     ),
      //     const SizedBox(
      //       height: 15,
      //     ),
      //     Container(
      //       width: 170,
      //       height: 45,
      //       decoration: BoxDecoration(boxShadow: [
      //         BoxShadow(
      //           color: Colors.grey.withOpacity(0.6),
      //           spreadRadius: 1,
      //           blurRadius: 0.5,
      //           offset:
      //               const Offset(0, 02), // changes the position of the shadow
      //         ),
      //       ], color: primaryColor, borderRadius: BorderRadius.circular(30)),
      //       child: const Center(
      //         child: Text(
      //           "Login",
      //           style: TextStyle(
      //               fontSize: 16,
      //               color: Colors.white,
      //               fontWeight: FontWeight.bold),
      //         ),
      //       ),
      //     ),
      //     const SizedBox(
      //       height: 30,
      //     ),
      //     Text(
      //       "FORGOT YOUR PASSWORD?",
      //       style: TextStyle(
      //         color: primaryColor,
      //       ),
      //     ),
      //     const SizedBox(
      //       height: 20,
      //     ),
      //     GestureDetector(
      //       onTap: () {
      //         Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //                 builder: (context) => const SignUpScreen()));
      //       },
      //       child: Text(
      //         "SIGN UP WITH EMAIL",
      //         style: TextStyle(
      //           color: primaryColor,
      //         ),
      //       ),
      //     ),
      //     const SizedBox(
      //       height: 20,
      //     ),
      //     GestureDetector(
      //       onTap: () {
      //         Navigator.push(context,
      //             MaterialPageRoute(builder: (context) => const Dasboard()));
      //       },
      //       child: Text(
      //         "SKIP FOR NOW",
      //         style: TextStyle(
      //           color: primaryColor,
      //         ),
      //       ),
      //     ),
      //     const SizedBox(
      //       height: 60,
      //     ),
      //     const Text(
      //       "Sign up / Sign in with",
      //       style: TextStyle(
      //         color: Colors.black,
      //       ),
      //     ),
      //     const SizedBox(
      //       height: 20,
      //     ),
      //     SizedBox(
      //       width: 100,
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           const FaIcon(
      //             FontAwesomeIcons.google,
      //             color: Colors.deepOrange,
      //           ),
      //           FaIcon(
      //             FontAwesomeIcons.facebook,
      //             color: Colors.blue.shade700,
      //           ),
      //         ],
      //       ),
      //     )
      //   ],
      // ),
      //   ),
    );
  }
}
