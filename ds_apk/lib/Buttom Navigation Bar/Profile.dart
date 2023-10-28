import 'package:ds_apk/Buttom%20Navigation%20Bar/buttomNavigation.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: ClipPath(
      clipper: Customclippath(),

      child:  Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color.fromARGB(255, 32, 72, 149),
        child: Center(
            child: Stack(
          children: [
            Positioned(
              left: 9,
              top: 205,
              child: SizedBox(
                      width: 239,
                      height: 39,
                      child: Text(
                        "Let’s you in",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.7),
                              offset: const Offset(0, 5),
                              blurRadius: 10,
                            )
                          ],
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 28,
                          fontFamily: 'Jost-VariableFont_wght',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
      
    ));
  }
}
