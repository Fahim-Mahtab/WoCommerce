import 'package:flutter/material.dart';
import '../components/quantity_custom.dart';

class ProductDetailPage extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String rating;

  const ProductDetailPage({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.rating,
  });

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int _quantity = 1;
  String? _selectedSize;
  Color? _selectedColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SizedBox(
                  height: 400,
                  width: double.infinity,
                  child: Image.network(
                    widget.imageUrl,
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        widget.price,
                        style: const TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(),
                        child: Text(
                          '\$80.00',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Colors.grey,
                            decorationThickness: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black87, // dark background
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              widget.rating,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(width: 3),
                            const Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 18,
                            ),
                            const SizedBox(width: 3),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(),
                        child: Text(
                          '25 reviews',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      const Text(
                        'ADD YOUR REVIEW',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'SIZE',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8.0,
                    children: ['S', 'M', 'L', 'XL'].map((size) {
                      return ChoiceChip(
                        label: Text(size),
                        selected: _selectedSize == size,
                        onSelected: (selected) {
                          setState(() {
                            _selectedSize = selected ? size : null;
                          });
                        },
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "COLOR",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 10.0, // space between color boxes
                        children:
                            [
                              Colors.blue,
                              Colors.orange,
                              Colors.yellow,
                              Colors.green,
                              Colors.teal,
                            ].map((color) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedColor = color;
                                  });
                                },
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: color,
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                      color: _selectedColor == color
                                          ? Colors.black
                                          : Colors.transparent,
                                      width: 2,
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Quantity",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),

                  QuantitySelector(
                    value: _quantity,
                    min: 1,
                    max: 99,
                    onChanged: (v) => setState(() => _quantity = v),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
