import 'package:flutter/material.dart';

class MyCircleAvatar extends StatelessWidget {
  final String imageUrl;
  final String items;

  const MyCircleAvatar({super.key, required this.imageUrl, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(radius: 40, backgroundImage: NetworkImage(imageUrl)),
        Text(items),
      ],
    );
  }
}
