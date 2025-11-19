import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text("Profile Page"),
        centerTitle: true,
        backgroundColor: Colors.amber.shade400,
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 40, vertical: 30),
        child: Center(
          child: Container(
            width: 1.sw,
            height: 0.5.sh,

            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/profile_photo.jpg"),
                  radius: 50,
                ),
                SizedBox(height: 20.h),
                Text(
                  "Althaf Kumara",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  "Saya merupakan seorang siswa dari SMK Telkom Malang, yang sedang mengikuti program internship mobile developer di Venturo Pro Indonesia",
                  style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
