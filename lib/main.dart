import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:developer';

import 'package:store_app/screens/home_page.dart';

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
        HomePage.id:(context)=>HomePage(),
      },
      initialRoute: HomePage.id ,
      home: Scaffold(
        //3 splash scrrens
        appBar: AppBar(
          title: Text('Shoply'),
        ),
      ),
    );
  }
}
