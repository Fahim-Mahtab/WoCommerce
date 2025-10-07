import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../components/quantity_custom.dart';

class ProductDetailPage extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String rating;
  final void Function()? onTap;

  const ProductDetailPage({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.rating,
    this.onTap,
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
    Widget imageSection = Padding(
      padding: EdgeInsets.all(8.0.w),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.r),
        child: Image.network(
          widget.imageUrl,
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
      ),
    );

    Widget detailsSection = Padding(
      padding: EdgeInsets.all(16.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Text(
                widget.price,
                style: TextStyle(
                  fontSize: 25.sp,
                  color: Colors.black87,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                child: Text(
                  '\$80.00',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20.sp,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.grey,
                    decorationThickness: 1.5,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      widget.rating,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                      ),
                    ),
                    SizedBox(width: 3.w),
                    Icon(Icons.star, color: Colors.white, size: 18.sp),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                child: Text(
                  '25 reviews',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              const Spacer(),
              Text(
                'ADD YOUR REVIEW',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w900,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Text(
            'SIZE',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 8.h),
          Wrap(
            spacing: 8.0.w,
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
          SizedBox(height: 10.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "COLOR",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 8.h),
              Wrap(
                spacing: 10.0.w,
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
                          width: 35.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                            color: color,
                            borderRadius: BorderRadius.circular(6.r),
                            border: Border.all(
                              color: _selectedColor == color
                                  ? Colors.black
                                  : Colors.transparent,
                              width: 2.w,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Text(
            "Quantity",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.sp,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 8.h),
          QuantitySelector(
            value: _quantity,
            min: 1,
            max: 99,
            onChanged: (v) => setState(() => _quantity = v),
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isWebView = kIsWeb && constraints.maxWidth > 700;
          if (isWebView) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(32.w),
                    child: imageSection,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: SingleChildScrollView(child: detailsSection),
                ),
              ],
            );
          } else {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 400.h,
                    width: double.infinity,
                    child: imageSection,
                  ),
                  detailsSection,
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
