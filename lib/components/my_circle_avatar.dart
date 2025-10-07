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
            child: CircleAvatar(
              radius: 40.r,
              backgroundImage: NetworkImage(imageUrl),
            ),
            onTap: () {
              if (items == 'Men') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenSection()),
                );
              } else if (items == 'Kids') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KidsSection()),
                );
              } else if (items == 'Women') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WomenSection()),
                );
              }
            },
          ),
        ),
        Text(items, style: TextStyle(fontSize: 14.sp)),
      ],
    );
  }
}
