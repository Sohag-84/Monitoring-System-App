import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitoring_system/core/theme/app_colors.dart';

Widget radioButtonWidget(
  BuildContext context, {
  required String label,
  required String value,
  required String groupValue,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Radio<String>(
          value: value,
          groupValue: groupValue,
          onChanged: (_) => onTap(),
          activeColor: AppColors.primaryColor,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 14.sp,
            color: groupValue == value
                ? AppColors.primaryColor
                : AppColors.greyColor,
            fontWeight: groupValue == value
                ? FontWeight.w600
                : FontWeight.normal,
          ),
        ),
      ],
    ),
  );
}
