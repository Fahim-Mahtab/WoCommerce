import 'package:flutter/material.dart';

class MyProdColumn extends StatelessWidget {
  final String imageUrl;
  final String price;
  final String title;
  final String rating;

  const MyProdColumn({
    super.key,
    required this.imageUrl,
    required this.price,
    required this.title,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          clipBehavior: Clip.antiAlias,
          child: Image.network(imageUrl, fit: BoxFit.contain),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(children: [Text(price), Text(title), Text(rating)]),
        ),
      ],
    );
  }
}
