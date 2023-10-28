import 'package:flutter/material.dart';

class ClubPage extends StatelessWidget {
  const ClubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Center(
        child:  Stack(
                children: [
                  SizedBox(
                    child: Text('Club page',
                    style: TextStyle(fontSize: 40),
                    ),
                  )
                ],
              )
      ),
    );
  }
}
