import 'package:flutter/material.dart';
import 'package:store_app/helper/constants/const_colors.dart';
import 'package:store_app/screens/home_page.dart';

class OnboardingScreen extends StatefulWidget {
  static String id = "OnboardingScreen";
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  final List<Map<String, String>> onboardingData = [
    {
      "image": "assets/images/onboarding1.png",
      "title": "Discover New Products",
      "description":
          "Explore the latest products in our catalog and find the best deals."
    },
    {
      "image": "assets/images/onboarding2.png",
      "title": "Fast & Secure Payments",
      "description":
          "Experience seamless and secure payments with multiple payment methods."
    },
    {
      "image": "assets/images/onboarding3.png",
      "title": "Track Your Orders",
      "description":
          "Stay updated on your order status with real-time tracking."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
        controller: _pageController,
        itemCount: onboardingData.length,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (context, index) {
          return OnboardingPage(
            image: onboardingData[index]["image"]!,
            title: onboardingData[index]["title"]!,
            description: onboardingData[index]["description"]!,
          );
        },
      ),
      bottomSheet: currentIndex == onboardingData.length - 1
          ? Container(
              height: 60,
              width: double.infinity,
              color: secColor,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomePage.id);
                },
                child: Text(
                  "Get Started",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            )
          : Container(
            color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      _pageController.jumpToPage(onboardingData.length - 1);
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(color: secColor, fontSize: 18),
                    ),
                  ),
                  Row(
                    children: List.generate(onboardingData.length, (index) {
                      return buildDot(index);
                    }),
                  ),
                  TextButton(
                    onPressed: () {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(color: secColor, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  Container buildDot(int index) {
    return Container(
      height: 10,
      width: currentIndex == index ? 30 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: currentIndex == index ? secColor : Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  OnboardingPage(
      {required this.image, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        Image.asset(
          image,
          height: 300,
          width: 300,
        ),
        SizedBox(height: 20),
        Text(
          title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          
          
        ),
      ],
    );
  }
}
