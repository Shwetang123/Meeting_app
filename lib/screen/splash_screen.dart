import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mind_meeting_app/screen/home-page.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => _Splash_screenState();

}

class _Splash_screenState extends State<Splash_screen> {


  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context)=>HomePage(),));
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              height: 300,
              width: 300,
              margin: const EdgeInsets.only(top: 200),
              child: Image.network("https://img.freepik.com/free-vector/friends-video-calling-spending-fun-time_23-2148498388.jpg?t=st=1717577611~exp=1717581211~hmac=a89c6464f105dec48b33f05c97eca62d17277c019ff1231e350ae3c2872413d4&w=1060",fit: BoxFit.cover,),
            ),
          ),
          Container(
               margin: const EdgeInsets.only(top: 300),
            child: const Text("Created By CodingBeast..",
              style: TextStyle(fontSize: 16,
              color: Colors.grey,
              fontWeight: FontWeight.w600),),
          ),
        ],
      ),
    );
  }
}
