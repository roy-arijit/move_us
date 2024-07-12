import 'dart:async';

import 'package:flutter/material.dart';
import 'onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
     Future.delayed(
         const Duration(seconds: 3),(){
       Navigator.pushReplacement(
         context, MaterialPageRoute(
         builder: (context) => OnBoardScreen(),
       )
       );
     }
     );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        // Background image
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          child: Image.asset(
            'assets/icons/Background.png', // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 180),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Container(
                width: 180,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/icons/large_logo 1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10), // Add spacing between image and text
              Padding(
                padding: EdgeInsets.only(top: 10.0, bottom:0, left: 40, right: 40), // Adjust the padding as needed
                child: Text(
                  'Revolutionizing moving with seamless customization, real-time tracking, and reliable support for an effortless experience.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.indigo[800],
                    fontWeight: FontWeight.bold,
                    // Other text styles as needed
                  ),
                ),
              ),
              //SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(top:80, bottom: 50, left:100),
                child: Container(
                width: 150,
                height: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/icons/car_logo.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                         child: Center(
                         child: Container(
                           padding: EdgeInsets.only(bottom: 25),
                           height: 60,
                           width: 40,
                       child:Text(
                      "Let's Move",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        // Other text styles as needed
                      ),
                    ),
                  ),
                         ),
                ),
                ),

            ],
          ),
        ),
    ]),
    );
  }
}

// class MoveUs extends StatelessWidget {
//   const MoveUs({super.key});
//   return  Scaffold(),
//

//   @override
//   Widget build(BuildContext context) {
//     return Material;
// //     return CustomPaint(
// //       painter: MyCustomShape(),
// //     );
//    }
//  }

// @override
// bool shouldRepaint(CustomPainter oldDelegate) => false;
// }
// class MyCustomShape extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final path = Path()
//       ..moveTo(0, size.height) // Start point
//       ..lineTo(size.width, size.height) // Straight line
//       ..quadraticBezierTo(
//           size.width / 3,
//           0, // Control point
//           0,
//           size.height); // End point (quadratic Bezier curve)
//
//     final paint = Paint()
//       ..color = Colors.blue
//       ..style = PaintingStyle.fill;
//
//     canvas.drawPath(path, paint);
//   }



// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Splash Screen Example")),
//       body: Center(
//           child: Text("Welcome to Home Page",
//               style: TextStyle(color: Colors.black, fontSize: 30))),
//     );
//   }
// }
