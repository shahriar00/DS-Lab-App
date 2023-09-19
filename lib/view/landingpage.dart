import 'package:flutter/material.dart';

import '../helper/bottombar.dart';
import '../helper/customsize.dart';

class landingpage extends StatefulWidget {
  const landingpage({super.key});

  @override
  State<landingpage> createState() => _landingpageState();
}

class _landingpageState extends State<landingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          Image.asset(
            "images/dslogo.png",
            height: 100,
            width: 100,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.50,
          ),
          Image.asset(
            "images/diulogo.png",
            height: 100,
            width: 100,
          ),
          InkWell(
            onTap: () {},
            child: Image.asset(
              "images/notification.gif",
              scale: 2,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 50),
                width: 380,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF4DB05B)),
                child: Center(
                  child: Text(
                    "Projects",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                )),
            ClipPath(
              clipper: Customclippath(),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 100, left: 15),
                          child: Text(
                            "Upgrade \nYour Business With \nData Scientific Solution",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                      Container(
                          margin: EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Text(
                            "First time providing data service in Bangladesh,Powered By Data Science Lab of Daffodil International University, Dhaka, Bangladesh",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                      Center(
                        child: Image.asset(
                          "images/img3.png",
                          height: 200,
                          width: MediaQuery.of(context).size.width / 1.50,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      //Data summit........
                      Container(
                        height: 60,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 8),
                        width: MediaQuery.of(context).size.width / 1.30,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Data Science Summit 2023",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  //borderRadius: BorderRadius.circular(50),
                                  color: Colors.white),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_forward_ios)),
                            )
                          ],
                        ),
                      ),
                      //Bottom NavigationBar......
                      //bottombarnavigator(),
                      
                    ]),
                color: Color.fromARGB(255, 32, 72, 149),
              ),
            ),

            // CustomPaint(
            //   size: Size(
            //       MediaQuery.of(context).size.width,
            //       MediaQuery.of(context)
            //           .size
            //           .height), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            //   painter: RPSCustomPainter(),

            // ),
          ],
        ),
      ),
      bottomNavigationBar: bottombarnavigator(),
    );
  }

  Widget bottombarnavigator() {
    return Container(
      height: 60,
      
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 32, 72, 149),
        
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {},
            child: Image.asset("images/home.png"),
          ),
          InkWell(
            onTap: () {},
            child: Image.asset("images/events.png"),
          ),
          InkWell(
            onTap: () {},
            child: Image.asset("images/menu.png"),
          ),
          InkWell(
            onTap: () {},
            child: Image.asset("images/club.png"),
          ),
          InkWell(
            onTap: () {},
            child: Image.asset("images/profile.png"),
          )
        ],
      ),
    );
  }
}

class Customclippath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    Path path_0 = Path();
    path_0.moveTo(size.width * -0.0077778, size.height * 0.0582109);
    path_0.quadraticBezierTo(size.width * 0.3809722, size.height * 0.1005332,
        size.width * 0.5016667, size.height * 0.0952607);
    path_0.cubicTo(
        size.width * 0.5025000,
        size.height * 0.0952607,
        size.width * 0.4997222,
        size.height * 0.0890995,
        size.width * 0.5005556,
        size.height * 0.0962085);
    path_0.quadraticBezierTo(size.width * 0.6225000, size.height * 0.0964455,
        size.width * 1.0113333, size.height * 0.0601896);
    path_0.lineTo(size.width * 1.0207778, size.height * 1.0068128);
    path_0.lineTo(size.width * -0.0063333, size.height * 1.0053081);

    return path_0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
