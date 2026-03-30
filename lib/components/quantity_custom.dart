import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

    return SizedBox(
      height: 60.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: canDecrement ? () => onChanged(value - 1) : null,
            borderRadius: BorderRadius.circular(12.r),
            child: Container(
              width: 50.w,
              height: 50.h,
              decoration: BoxDecoration(
                color: canDecrement ? Colors.black : Colors.grey,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Icon(
                Icons.remove,
                color: Colors.white,
                size: 24.sp,
              ),
            ),
          ),

          Text(
            '$value Units',
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),

          InkWell(
            onTap: canIncrement ? () => onChanged(value + 1) : null,
            borderRadius: BorderRadius.circular(12.r),
            child: Container(
              width: 50.w,
              height: 50.h,
              decoration: BoxDecoration(
                color: canIncrement ? Colors.black : Colors.grey,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Icon(Icons.add, color: Colors.white, size: 24.sp),
            ),
          ),
        ],
      ),
    );
  }
}
