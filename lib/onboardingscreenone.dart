import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);

  final List<OnboardingItem> onboardingItems = [
    OnboardingItem(
      title: 'Welcome to Kzearah',   // First Onboarding Screen
      subtitle: 'Discover amazing products at great prices.',
      imageAssetPath: 'assets/images/screenone.png'// Updated to use Image.asset
    ),
    OnboardingItem(
      title: 'Shop with Confidence',  // Second Onboarding Screen
      subtitle: 'Secure and easy online shopping experience.',
      imageAssetPath: 'assets/images/tp.png', // Updated to use Image.asset
    ),
  ];

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: onboardingItems.length,
        itemBuilder: (context, index) {
          return OnboardingPage(item: onboardingItems[index]);
        },
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
      ),
      bottomSheet: _currentPage == onboardingItems.length - 1
          ? 
               ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(primary: Colors.red),
                child: Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white),
                ),
              
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    // Skip onboarding screens
                  },
                   style: ElevatedButton.styleFrom(primary: Colors.red),
                  child: Text(
                    'Skip',
           style: TextStyle(color: Colors.white),
                  
                  ),
                   
                ),
                ElevatedButton(
                  onPressed: () {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.ease,
                    );
                  },
                   style: ElevatedButton.styleFrom(primary: Colors.red),
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.white),
                    ),
                ),
              ],
            ),
    );
  }
}

class OnboardingItem {
  final String title;
  final String subtitle;
  final String imageAssetPath;

  OnboardingItem({
    required this.title,
    required this.subtitle,
    required this.imageAssetPath,
  });
}

class OnboardingPage extends StatelessWidget {
  final OnboardingItem item;

  OnboardingPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(item.imageAssetPath), // Using Image.asset to load the image
        Text(item.title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        Text(item.subtitle, style: TextStyle(fontSize: 18)),
      ],
    );
  }
}

