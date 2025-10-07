import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
        child: Column(
          children: [
            // Profile Section
            Column(
              children: [
                CircleAvatar(
                  radius: 50.r,
                  backgroundImage: const NetworkImage(
                      'https://static.vecteezy.com/system/resources/thumbnails/005/346/410/small_2x/close-up-portrait-of-smiling-handsome-young-caucasian-man-face-looking-at-camera-on-isolated-light-gray-studio-background-photo.jpg'),
                ),
                SizedBox(height: 10.h),
                Text(
                  'John Doe',
                  style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                ),
                Text(
                  'john.doe@example.com',
                  style: TextStyle(fontSize: 16.sp, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 30.h),

            // Menu List
            _buildAccountOption(context, Icons.person_outline, 'My Profile', () {}),
            _buildAccountOption(context, Icons.shopping_bag_outlined, 'My Orders', () {}),
            _buildAccountOption(context, Icons.location_on_outlined, 'Shipping Addresses', () {}),
            _buildAccountOption(context, Icons.payment_outlined, 'Payment Methods', () {}),
            _buildAccountOption(context, Icons.settings_outlined, 'Settings', () {}),
            _buildAccountOption(context, Icons.help_outline, 'Help Center', () {}),
            SizedBox(height: 20.h),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                child: Text(
                  'Logout',
                  style: TextStyle(fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildAccountOption(BuildContext context, IconData icon, String title, VoidCallback onTap) {
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
