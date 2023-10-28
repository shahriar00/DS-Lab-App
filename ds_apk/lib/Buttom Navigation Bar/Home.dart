import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Center(
        child:  Stack(
                children: [
                  SizedBox(
                    child: Text('Home page',
                    style: TextStyle(fontSize: 40),
                    ),
                  )
                ],
              )
      ),
    );
  }
}
