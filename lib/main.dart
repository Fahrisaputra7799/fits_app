import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Message.dart';
import 'package:flutter_application_1/pages/productList.dart';
import 'package:flutter_application_1/pages/Next_2.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
import 'package:flutter_application_1/pages/Next_1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'Home/',
      routes: {
        'Home/' : (context) => Homepage(),
        'next1/' : (context) => HomeScreen1(),
        'next2/' : (context) => HomeScreen2(),
        // main Pages
        'message/' : (context) => MyMessage(),
        'product/' : (context) => MyProduct(),
      },
    );
  }
}