import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'More Options',
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.h),
            _buildMoreOption(context, Icons.notifications_none_outlined, 'Notifications', () {}),
            _buildMoreOption(context, Icons.language_outlined, 'Language', () {}),
            _buildMoreOption(context, Icons.public_outlined, 'Country/Region', () {}),
            _buildMoreOption(context, Icons.info_outline, 'About Us', () {}),
            _buildMoreOption(context, Icons.contact_support_outlined, 'Contact Us', () {}),
            _buildMoreOption(context, Icons.policy_outlined, 'Privacy Policy', () {}),
            _buildMoreOption(context, Icons.description_outlined, 'Terms & Conditions', () {}),
          ],
        ),
      ),
    );
  }

  Widget _buildMoreOption(BuildContext context, IconData icon, String title, VoidCallback onTap) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.h),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
      child: ListTile(
        leading: Icon(icon, size: 24.sp, color: Colors.black54),
        title: Text(title, style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500)),
        trailing: Icon(Icons.arrow_forward_ios, size: 18.sp, color: Colors.grey),
        onTap: onTap,
      ),
    );
  }
}
