import 'dart:async';

import 'package:flutter/material.dart';
import 'phone_verification_2.dart';

class PhoneVerificationScreen extends StatefulWidget {
  const PhoneVerificationScreen({super.key});

  @override
  State<PhoneVerificationScreen> createState() => _PhoneVerificationScreenState();
}
@override
class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        height: 400,
        width: double.infinity,
        child: GestureDetector(
          child: Image.asset(
            'assets/icons/Verification_1.png', // Replace with your image path
            fit: BoxFit.cover,
          ),
          onTap: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => PhoneVerificationScreen(),
            )
            );
          },
        ),
      ),
    );
  }
}