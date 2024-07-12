import 'dart:async';

import 'package:flutter/material.dart';
import 'login.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}
@override
class _SignUpScreenState extends State<SignUpScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Image.asset(
              'assets/icons/home.png', // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
      Column(children: <Widget>[
          Image.asset(
            'assets/icons/signup.png', // Replace with your image path
            height: 450,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          SizedBox(height: 20),
      Container(
        margin: EdgeInsets.symmetric(horizontal:10),
        height: 50,
        width: 400,
        child: Align(
          alignment: Alignment.center,
          child: Image.asset('assets/icons/join_apple.png',fit: BoxFit.cover,), // Your image asset
        ),
        ),
          SizedBox(height:20),
          Container(
            margin: EdgeInsets.symmetric(horizontal:10),
            height: 55,
            width: 400,
            child: Align(
              alignment: Alignment.center,
                child: Image.asset('assets/icons/join_google.png',fit: BoxFit.cover,), // Your image asset
          ),
          ),
          SizedBox(height:20),
          Container(
            margin: EdgeInsets.symmetric(horizontal:10),
            height: 80,
            width: 500,
            child: Align(
              alignment: Alignment.center,
              child: Image.asset('assets/icons/join_email.png',fit: BoxFit.cover,), // Your image asset
            ),
          ),
      SizedBox(height:5),
      Container(
        margin: EdgeInsets.symmetric(horizontal:10),
        height: 40,
        width: 200,
        child: GestureDetector(
        child: Text(
          'Sign in instead',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
            color: Colors.blue[400],
            fontWeight: FontWeight.bold,
            //decoration: TextDecoration.underline,
            // Other text styles as needed
          ),
        ),
          onTap: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => LoginScreen(),
            )
            );
          },
      ),
      ),
        ]),
        ],
      ),
    );
  }
}