import 'package:ds_apk/Buttom%20Navigation%20Bar/Club.dart';
import 'package:ds_apk/Buttom%20Navigation%20Bar/Event.dart';
import 'package:ds_apk/Buttom%20Navigation%20Bar/Home.dart';
import 'package:ds_apk/Buttom%20Navigation%20Bar/Menu.dart';
import 'package:flutter/material.dart';
import 'package:ds_apk/Buttom%20Navigation%20Bar/Profile.dart';

class MyButtomNavBar extends StatefulWidget {
  const MyButtomNavBar({super.key, required String title});

  @override
  State<MyButtomNavBar> createState() => _MyButtomNavBarState();
}

class _MyButtomNavBarState extends State<MyButtomNavBar> {
  int myCurrentIndex = 0;
  List pages = const [
    HomePage(),
    EventPage(),
    MenuPage(),
    ClubPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            elevation: 0,
           backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            actions: [
              Image.asset(
                "asset/Images/ds.png",
                height: 100,
                width: 100,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
              ),
              Image.asset(
                "asset/Images/diu.png",
                height: 100,
                width: 100,
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  "asset/Images/notification.gif",
                  scale: 2,
                ),
              )
            ],
          )),
       backgroundColor: const Color.fromARGB(255, 32, 72, 149),
      bottomNavigationBar: Container(
        
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        
        decoration: BoxDecoration(boxShadow: 
        [BoxShadow(
              color: const Color.fromARGB(255, 32, 72, 149).withOpacity(0.5),
              blurRadius: 25,
              offset: const Offset(8, 20))
        ]),
        child: ClipRRect(
          
          borderRadius: BorderRadius.circular(30),
          
          child: BottomNavigationBar(
              backgroundColor: const Color.fromARGB(255, 32, 72, 149),
              selectedItemColor: const Color.fromARGB(255, 32, 72, 149),
              unselectedItemColor: Colors.black,
              currentIndex: myCurrentIndex,
              onTap: (index) {
                setState(() {
                  myCurrentIndex = index;
                });
              },
              
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.event), label: "Event"),
                BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.group), label: "DS Club"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline), label: "Profile"),
              ]
            
              ),
        ),
      ),
      body: pages[myCurrentIndex],
    );
  }
}

class Customclippath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.0005000, size.height * 0.1994286);
    path.lineTo(size.width * -0.0048333, size.height * 1.0014286);
    path.lineTo(size.width * 1.0008333, size.height * 1.0028571);
    path.lineTo(size.width * 1.0023333, size.height * 0.1414286);
    path.lineTo(size.width * 0.1670000, size.height * 0.2880000);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
