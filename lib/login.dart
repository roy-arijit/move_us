import 'dart:async';

import 'package:flutter/material.dart';
import 'phone_verification_1.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
@override
class _LoginScreenState extends State<LoginScreen> {
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
          height: 500,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        SizedBox(height: 20),
        Container(
          margin: EdgeInsets.symmetric(horizontal:10),
          height: 50,
          width: 450,
          child: Align(
            alignment: Alignment.center,
            child: Image.asset('assets/icons/email.png',fit: BoxFit.cover,), // Your image asset
          ),
        ),
        SizedBox(height:20),
        Container(
          margin: EdgeInsets.symmetric(horizontal:10),
          height: 50,
          width: 400,
          child: Align(
            alignment: Alignment.center,
            child: Image.asset('assets/icons/password.png',fit: BoxFit.cover,), // Your image asset
          ),
        ),
        SizedBox(height:5),
        Container(
          margin: EdgeInsets.symmetric(horizontal:10),
          height: 40,
          width: double.infinity,
          child: GestureDetector(
            child: Text(
              'Forgot Password',
              textAlign: TextAlign.right,
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
                builder: (context) => PhoneVerificationScreen(),
              )
              );
            },
          ),
        ),
        ]),
    ]),
    );
  }
}