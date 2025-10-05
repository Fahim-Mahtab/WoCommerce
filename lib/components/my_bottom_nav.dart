import 'package:flutter/material.dart';

class MyBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  const MyBottomNav({
    super.key, required this.currentIndex, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blueGrey,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
          icon: Icon(Icons.category_outlined),
          label: "Category",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_2_outlined),
          label: "Account",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: "More",
        ),
      ],
    );
  }
}