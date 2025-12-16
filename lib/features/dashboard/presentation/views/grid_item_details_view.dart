import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitoring_system/core/constants/app_assets.dart';
import 'package:monitoring_system/core/constants/app_strings.dart';
import 'package:monitoring_system/core/theme/app_colors.dart';
import 'package:monitoring_system/core/widgets/common_app_bar.dart';

class GridItemDetailsView extends StatelessWidget {
  const GridItemDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: commonAppBar(),
      body: Container(
        margin: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(emptyIcon),
            Text(noDataFound, style: TextStyle(color: AppColors.greyColor)),
          ],
        ),
      ),
    );
  }
}
