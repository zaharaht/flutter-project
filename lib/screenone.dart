import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_work/onboardingscreenone.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a delay (e.g., loading data or performing tasks)
    // Replace this with your actual initialization logic.
    Timer(Duration(seconds: 4), () {
      // Navigate to the main content or home page.

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>OnboardingScreen()),
      );
      
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        // You can display your app logo or any other content here.
        child: Image.asset('assets/images/kzearah.png'),
        
      ),
    );
  }
}



