import 'package:flutter/material.dart';
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
              Icon(Icons.store, size: 30, color: Colors.pinkAccent),
              const SizedBox(width: 8),
              const Text(
                "WooCommerce",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search, color: Colors.black),
              onPressed: () {
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.notifications_active_outlined,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            const SizedBox(width: 10),
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
