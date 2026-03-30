import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:woo_commerce/pages/kids_section.dart';

import '../pages/men_section.dart';
import '../pages/women_section.dart';

class MyCircleAvatar extends StatelessWidget {
  final String imageUrl;
  final String items;

  const MyCircleAvatar({
    super.key,
    required this.imageUrl,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(5.0.w),
          child: GestureDetector(
            onTap: () {
              if (items == 'Men') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MenSection()),
                );
              } else if (items == 'Kids') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const KidsSection()),
                );
              } else if (items == 'Women') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WomenSection()),
                );
              }
            },
            child: CircleAvatar(
              radius: 40.r,
              backgroundColor: Colors.grey[200],
              child: ClipOval(
                child: Image.network(
                  imageUrl,
                  width: 80.r,
                  height: 80.r,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Icon(
                    Icons.person,
                    size: 40.r,
                    color: Colors.grey[600],
                  ),
                ),
              ),
            ),
          ),
        ),
        Text(items, style: TextStyle(fontSize: 14.sp)),
      ],
    );
  }
}
