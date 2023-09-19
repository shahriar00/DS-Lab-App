
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
 appBar: PreferredSize(preferredSize:Size.fromHeight(50), child: AppBar(
  backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
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
