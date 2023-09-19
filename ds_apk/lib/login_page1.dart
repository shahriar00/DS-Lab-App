
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 

  @override
  Widget build(BuildContext context) {


   
    return Scaffold(
      
      backgroundColor: Color.fromARGB(255, 32, 72, 149),
      body: Column(
        children: [
          SvgPicture.asset('Images/svg/Vector 10.svg',
          height: 240,
          width: 100,
          matchTextDirection: true,

          ),
          
        ],
      ),


      
      
    );

    
  }
}
