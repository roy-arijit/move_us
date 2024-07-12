import'package:flutter/material.dart';

import 'splash.dart';
import 'onBoarding.dart';
import 'signup.dart';
import 'login.dart';
import 'phone_verification_1.dart';
import 'phone_verification_2.dart';
import 'home.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),

    );
  }
}


