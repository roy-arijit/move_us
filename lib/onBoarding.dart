import 'dart:async';

import 'package:flutter/material.dart';
import 'signup.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}
@override
class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        // Background image
        Container(
            color: Colors.indigo[800], // Set your desired background color
      ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
      padding: EdgeInsets.only(top:20, left:10, right:10,),
        child: Image.asset(
            'assets/icons/Rectangle 51.png', // Replace with your image path
            height: 480,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: EdgeInsets.only( left:10, right:10, bottom:20),
          child: Image.asset(
            'assets/icons/Rectangle 52.png', // Replace with your image path
            height: 228,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
      ],
    ),
          Column(
            children: <Widget>[
              Padding(
              padding: EdgeInsets.only(top:100, left:10, right:10),
            child: Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/icons/onboard_image.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.only(top: 10.0, bottom:10, left: 40, right: 40),
                  child: Column(// Adjust the padding as needed
                children: <Widget>[
                Text(
                  'Move Us',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.indigo[800],
                    fontWeight: FontWeight.bold,
                    // Other text styles as needed
                  ),
                ),
                Text(
                  'Your Hassle Free Moving Partner',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.indigo[800],
                    fontWeight: FontWeight.bold,
                    // Other text styles as needed
                  ),
                ),
          ]),
              ),
              SizedBox(height: 50),
              Container(
                margin: EdgeInsets.all(20),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => SignUpScreen(),
                    ));
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              )
          ]),
      ]),
    );
  }
}
