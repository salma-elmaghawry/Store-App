import 'package:flutter/material.dart';

import 'package:store_app/screens/home_page.dart';
import 'package:store_app/screens/onboarding.dart';
import 'package:store_app/screens/update_product_page.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id: (context) => const HomePage(),
        UpdateProductPage.id: (context) => UpdateProductPage(),
        OnboardingScreen.id: (context) => OnboardingScreen(),
      },
      initialRoute: OnboardingScreen.id,
      home: Scaffold(
        //3 splash scrrens
        appBar: AppBar(
          title:const  Text('Shoply'),
        ),
      ),
    );
  }
}
