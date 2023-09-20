import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        children: [
           Text("Let's you in", style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),),
          SizedBox(height: 100,),
          CircleAvatar(
            radius: 70,
            child: Icon(Icons.person, size: 120,),
          ),
          SizedBox(height: 100,),
          Text('Profile Page Content', style: TextStyle(fontSize: 30, color: Colors.white),),
        ],
      ),
    );
  }
}