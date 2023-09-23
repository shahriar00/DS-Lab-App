import 'package:flutter/material.dart';




class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title});

  @override
   State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(preferredSize:const Size.fromHeight(50), child: AppBar(
        elevation: 0,
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
      )
      ),
    
      body:
         Column(
          children: [
        
            ClipPath(
              clipper: Customclippath(),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: const Color.fromARGB(255, 32, 72, 149),
        
                
              ),
            ),
          ],
        ),
    );
  }
  }


class Customclippath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
   

    
         
    Path path = Path();
    path.moveTo(size.width*-0.0010000,size.height*0.1362857);
    path.lineTo(size.width*0.0008333,size.height*1.0042857);
    path.lineTo(size.width*0.9991667,size.height*0.9971429);
    path.lineTo(size.width*0.9991667,size.height*0.0028571);
    path.lineTo(size.width*0.9995000,size.height*0.1068571);
    path.lineTo(size.width*0.1435000,size.height*0.2154286);


  

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}