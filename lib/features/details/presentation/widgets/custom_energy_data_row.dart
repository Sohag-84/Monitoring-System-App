import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitoring_system/core/theme/app_colors.dart';

Widget customEngeryDataRow({required String title, required String value}) {
  return Row(
    children: [
      Text(
        '$title     :  ',
        style: TextStyle(
          color: AppColors.navyGreyColor,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
      SizedBox(height: 4.h),
      Text(
        value,
        style: TextStyle(
          color: AppColors.navyBlueColor,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    ],
  );
}
