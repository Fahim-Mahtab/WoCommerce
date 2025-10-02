import 'package:flutter/material.dart';
import 'package:woo_commerce/pages/landing_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Woo Commerce",
      home: LandingPage(),
    );
  }
}
