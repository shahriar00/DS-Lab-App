import 'dart:html';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ds_apk/home.dart';
import 'package:ds_apk/myflutter_app_icons.dart';
import 'package:ds_apk/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 final items = const [
    Icon(Icons.home, size: 25,),
    Icon(Icons.event, size: 25,),
    Icon(Icons.menu, size: 25,),
    Icon(Icons.groups_sharp, size: 25,),
    Icon(Icons.person_2, size: 25,)

  ];

  int index = 1;

 
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
//       appBar: PreferredSize(preferredSize:const Size.fromHeight(50), child: AppBar(
//                backgroundColor:const Color.fromARGB(255, 255, 255, 255),
//   actions: [
//         Image.asset("Images/ds.png",
//         height: 100,
//         width: 100,
//         ),
//         SizedBox(
//             width: MediaQuery.of(context).size.width / 3,
//           ),
//           Image.asset(
//             "Images/diu.png",
//             height: 100,
//             width: 100,
//           ),
//           InkWell(
//             onTap: () {},
//             child: Image.asset(
//               "Images/notification.gif",
//               scale: 2,
//             ),
//           )
//         ],
//       ),
//  ),
// backgroundColor:const Color.fromARGB(255, 32, 72, 149),
// body: Center(child:
//             Column(
//         children: [
//           SvgPicture.asset('Images/svg/Vector 10.svg',
//           height: 240,
//           width: 100,
//           matchTextDirection: true,
//           ),
//         ],
//       ),
//            ),


//class _HomeState extends State<Home> {
    
  


  
      backgroundColor: const Color.fromARGB(255, 32, 72, 149),
      appBar: PreferredSize(preferredSize:const Size.fromHeight(50), child: AppBar(
               backgroundColor:const Color.fromARGB(255, 255, 255, 255),
  actions: [
        Image.asset("Images/ds.png",
        height: 100,
        width: 100,
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width / 3,
          ),
          Image.asset(
            "Images/diu.png",
            height: 100,
            width: 100,
          ),
          InkWell(
            onTap: () {},
            child: Image.asset(
              "Images/notification.gif",
              scale: 2,
            ),
          )
        ],
      ),
 ),

body: Center(child:
            Column(
        children: [
          SvgPicture.asset('Images/svg/Vector 10.svg',
          height: 240,
          width: 100,
          matchTextDirection: true,
          ),
        ],
      ),
           ),





      
      bottomNavigationBar: CurvedNavigationBar(



        buttonBackgroundColor:const Color.fromARGB(255, 32, 72, 149),
        





        items: items,
        index: index,
        onTap: (selctedIndex){
          setState(() {
            index = selctedIndex;
          });
        },
        height: 60,
        backgroundColor: const Color.fromARGB(255, 32, 72, 149),
        animationDuration: const Duration(milliseconds: 300),
        color: Color.fromARGB(255, 66, 115, 206),
        // animationCurve: ,
      ),
      
      );
    
  }
}