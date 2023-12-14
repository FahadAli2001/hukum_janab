import 'package:flutter/material.dart';
import 'package:hukum_janab/src/const/images.dart';

import '../../const/colors.dart';

class ServicesDetailPage extends StatefulWidget {
  final String serviceName;
  const ServicesDetailPage({super.key,required this.serviceName});

  @override
  State<ServicesDetailPage> createState() => _ServicesDetailPageState();
}

class _ServicesDetailPageState extends State<ServicesDetailPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        title: Text(widget.serviceName,style:const TextStyle(
          color: Colors.white
        ),),
        centerTitle: true,
        
      ),
      body:   Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: ListView.builder(
         scrollDirection: Axis.vertical,
         itemCount: 5,
         itemBuilder: (context, index) {
           return Padding(
             padding: const EdgeInsets.symmetric(vertical: 7),
             child: SizedBox(
               width: size.width,
               height: size.height*0.2,
               child: Card(
                 elevation: 7,
                 color: Colors.white,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10)
                 ),
                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 10),
                   child: Row(
                    children: [
                      Image.asset(boyAvatar,
                      width: size.width*0.3,
                      fit: BoxFit.fill,
                      height:size.height*0.15 ,),
                    const  SizedBox(
                        width: 10,
                      ),
                       Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Mechanic Name",
                            style: TextStyle(
                              color: primaryColor,
                             fontWeight: FontWeight.bold,

                              fontSize: 18,
                            ),
                          ),
                        const  Text(
                            "Mechanic Description",
                            style: TextStyle(
                              color: Colors.black,
                             
                              fontSize: 16,
                            ),
                          ),
                        const  Text(
                            "Location",
                            style: TextStyle(
                              color: Colors.black,
                             
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Price",
                            style: TextStyle(
                              color: primaryColor,
                             
                              fontSize: 16,
                            ),
                          ),
                        ],
                      )
                    ],
                   ),

                 ),
               ),
             ),
           );
         },
        ),
      ),
    );
  }
}
