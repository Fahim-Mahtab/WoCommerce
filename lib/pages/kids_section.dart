import 'package:flutter/material.dart';

class KidsSection extends StatelessWidget {
  const KidsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              const Text(
                "Kids",
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
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            Column(),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  height: 130,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Color(0xFFE5E5E5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "UP TO \n30% OFF*",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            color: Colors.black87,
                          ),
                        ),
                      ),

                      Image.asset(
                        'images/child.png',
                        alignment: Alignment.centerRight,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(Icons.sort_sharp, color: Colors.black87),
                    SizedBox(width: 5),
                    Text(
                      "Sort by",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 60),
                Row(
                  children: [
                    Icon(Icons.menu_sharp, color: Colors.black87),
                    SizedBox(width: 5),
                    Text(
                      "Grid",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}
