import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitoring_system/core/theme/app_colors.dart';

class SummeryTab extends StatelessWidget {
  const SummeryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Electricity",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.greyColor,
          ),
        ),
        Divider(color: AppColors.greyColor),
        //chart container
        Container(
          height: 150.h,
          width: 150.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: BoxBorder.all(width: 25.w, color: AppColors.chartColor),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Total Power",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: AppColors.navyBlueColor,
                  ),
                ),
                Text(
                  "55.00 kw",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: AppColors.navyBlueColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      
      
      ],
    );
  }
}
