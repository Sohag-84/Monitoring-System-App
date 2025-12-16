import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitoring_system/core/theme/app_colors.dart';
import 'package:monitoring_system/features/dashboard/data/model.dart';

Widget sourceTabDataViewCard({required DataCardModel data}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 7.h),
    margin: EdgeInsets.only(bottom: 8.h),
    decoration: BoxDecoration(
      color: AppColors.cardBgColor,
      border: Border.all(color: Color(0xFFA5A7B9)),
      borderRadius: BorderRadius.circular(4.r),
    ),
    child: Row(
      children: [
        // Left Section: Icon
        Image.asset(data.iconPath, width: 35.w, height: 35.h),
        SizedBox(width: 12.w),

        // Middle Section: Title, Status, Data
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Title and Status Row
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 12.w,
                    height: 12.h,
                    decoration: BoxDecoration(
                      color: data.titleIndicatorColor,
                      borderRadius: BorderRadius.circular(2.r),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    data.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.navyBlueColor,
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Text(
                    data.status,
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: data.titleIndicatorColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.h),

              // Data 1
              Text.rich(
                TextSpan(
                  text: "${data.data1Label} : ",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.navyGreyColor,
                  ),
                  children: [
                    TextSpan(
                      text: data.data1Value,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.navyBlueColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2.h),

              // Data 2
              Text.rich(
                TextSpan(
                  text: "${data.data2Label} : ",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.navyGreyColor,
                  ),
                  children: [
                    TextSpan(
                      text: data.data2Value,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.navyBlueColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        Icon(Icons.arrow_forward_ios, color: AppColors.greyColor, size: 20.sp),
      ],
    ),
  );
}
