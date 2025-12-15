import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitoring_system/core/constants/app_assets.dart';
import 'package:monitoring_system/core/constants/app_colors.dart';
import 'package:monitoring_system/core/constants/app_strings.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top Section - Logo and Title
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.4,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 50.h),
                  // App Logo
                  Image.asset(appLogo, width: 100.w, height: 101.h),

                  SizedBox(height: 10.h),
                  Text(
                    appName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    appTagline,
                    style: TextStyle(color: Colors.white, fontSize: 18.sp),
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
