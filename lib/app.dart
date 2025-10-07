import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:woo_commerce/pages/home_page.dart';
import 'package:woo_commerce/pages/landing_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Woo Commerce",
      builder: (context, child) {
        ScreenUtil.init(context);
        return child!;
      },
      home: HomePage(),
    );
  }
}
