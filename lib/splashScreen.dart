import 'dart:async';
import 'package:flutter/material.dart';
import 'homepage.dart'; // Import your homepage file

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Start a timer for 5 seconds and then navigate to the homepage
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()), // Replace with your HomePage widget
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/Graphic-Era-University.png', // Your background image URL
              fit: BoxFit.cover, // Ensures the image covers the entire screen
            ),
          ),
          // You can uncomment the following block if you want to display the logo and text
          // Center(
          //   child: Column(
          //     mainAxisSize: MainAxisSize.min, // Center the content vertically
          //     children: [
          //       Image.asset(
          //         'assets/astroversaew.png', // Your logo or additional image URL
          //       ),
          //       SizedBox(height: 20), // Add some space between the image and the text
          //       Text(
          //         "Astroverse Pvt Ltd",
          //         style: TextStyle(
          //           fontSize: 24,
          //           fontWeight: FontWeight.bold,
          //           color: Colors.white, // Makes the text stand out against the background
          //         ),
          //       ),
          //       Text(
          //         "A Startup making Astronomy and space Education accessible to the people of India",
          //         style: TextStyle(
          //           fontSize: 8,
          //           fontWeight: FontWeight.bold,
          //           color: Colors.white, // Makes the text stand out against the background
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
