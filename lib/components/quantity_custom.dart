import 'package:flutter/material.dart';

class QuantitySelector extends StatelessWidget {
  final int value;
  final int min;
  final int max;
  final ValueChanged<int> onChanged;

  const QuantitySelector({
    super.key,
    required this.value,
    this.min = 1,
    this.max = 99,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final canDecrement = value > min;
    final canIncrement = value < max;

    return Container(
      height: 80,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: canDecrement ? () => onChanged(value - 1) : null,
            borderRadius: BorderRadius.circular(12),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.remove,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),

          Text(
            '$value Units',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          InkWell(
            onTap: canIncrement ? () => onChanged(value + 1) : null,
            borderRadius: BorderRadius.circular(12),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(Icons.add, color: Colors.white, size: 30),
            ),
          ),
        ],
      ),
    );
  }
}
