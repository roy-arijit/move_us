import 'dart:async';

import 'package:flutter/material.dart';
import 'home.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({super.key});

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}
@override
class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        height: 450,
        width: double.infinity,
        child: GestureDetector(
          child: Image.asset(
            'assets/icons/Verification_2.png', // Replace with your image path
            fit: BoxFit.cover,
          ),
          onTap: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => HomeScreen(),
            )
            );
          },
        ),
      ),
    );
  }
}