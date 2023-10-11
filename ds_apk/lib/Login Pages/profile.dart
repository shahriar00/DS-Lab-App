import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// ignore: non_constant_identifier_names
  int My_index = 0;
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
                "Images/ds.png",
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
          )),
      body: ClipPath(
        clipper: Customclippath(),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: const Color.fromARGB(255, 32, 72, 149),
          child: const SingleChildScrollView(
            child: Column(
              children: [],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        elevation: 0,
        onTap: (index) {
          setState(() {
            My_index = index;
          });
        },
        currentIndex: My_index,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 32, 72, 149),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.event,
            ),
            label: 'Event',
            backgroundColor: Color.fromARGB(255, 32, 72, 149),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: 'Menu',
            backgroundColor: Color.fromARGB(255, 32, 72, 149),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.group,
            ),
            label: 'DS Club',
            backgroundColor: Color.fromARGB(255, 32, 72, 149),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
            ),
            label: 'Profile',
            backgroundColor: Color.fromARGB(255, 32, 72, 149),
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
