import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:woo_commerce/pages/account_page.dart';
import 'package:woo_commerce/pages/landing_page.dart';
import 'package:woo_commerce/pages/category_page.dart';
import 'package:woo_commerce/pages/more_page.dart';

import '../components/my_bottom_nav.dart';
import 'kids_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const LandingPage(),
    const CategoryPage(),
    const AccountPage(),
    const MorePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 2,
          title: Row(
            children: [
              Icon(Icons.store, size: 30.sp, color: Colors.pinkAccent),
              SizedBox(width: 8.w),
              Text(
                "WooCommerce",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search, color: Colors.black, size: 24.sp),
              onPressed: () {
              },
            ),
            IconButton(
              icon: Icon(
                Icons.notifications_active_outlined,
                color: Colors.black,
                size: 24.sp,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
                size: 24.sp,
              ),
              onPressed: () {},
            ),
            SizedBox(width: 10.w),
          ],
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: MyBottomNav(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
        ),
      ),
    );
  }
}
