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
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 300,
          width: 200,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.network(imageUrl, fit: BoxFit.cover,),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(price,style: TextStyle(fontWeight: FontWeight.bold),), Text(title), Text(rating,),],
          ),

        ),
      ],
    );
  }
}
