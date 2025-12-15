import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitoring_system/core/constants/app_assets.dart';
import 'package:monitoring_system/core/constants/app_strings.dart';
import 'package:monitoring_system/core/theme/app_colors.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
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
                  // App Logo
                  Image.asset(appLogo, width: 100.w, height: 101.h),

                  SizedBox(height: 10.h),
                  Text(
                    appName,
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 32.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    appTagline,
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 18.sp,
                    ),
                  ),
                ],
              ),
            ),

            // Bottom Section - Login Form
            Container(
              height: MediaQuery.sizeOf(context).height * 0.55,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    login,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 32.h),

                  // Username TextField
                  TextField(
                    decoration: InputDecoration(
                      hintText: usernameHint,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),

                  // Password TextField
                  TextField(
                    decoration: InputDecoration(
                      hintText: passwordHint,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
