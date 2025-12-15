import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitoring_system/core/constants/app_strings.dart';
import 'package:monitoring_system/core/theme/app_colors.dart';

Widget customButton({
  required VoidCallback onTap,
  required String text,
  double height = 50.0,
  width = double.infinity,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: width,
      height: height.h,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Center(
        child: Text(
          login,
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
