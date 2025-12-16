import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitoring_system/core/theme/app_colors.dart';
import 'package:monitoring_system/features/dashboard/presentation/part/source_tab.dart';

class SummeryTab extends StatefulWidget {
  const SummeryTab({super.key});

  @override
  State<SummeryTab> createState() => _SummeryTabState();
}

class _SummeryTabState extends State<SummeryTab> with TickerProviderStateMixin {
  late TabController _sourceLoadTabController;

  @override
  void initState() {
    super.initState();
    _sourceLoadTabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _sourceLoadTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Column(
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
          SizedBox(height: 10.h),

          //source load tabbar
          sourceLoadTabbar(),
        ],
      ),
    );
  }

  Widget sourceLoadTabbar() {
    return Expanded(
      child: Column(
        children: [
          Container(
            height: 32.h,
            margin: EdgeInsets.symmetric(horizontal: 15.w),
            decoration: BoxDecoration(
              color: Color(0xFF6C99B8).withValues(alpha: .2),
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: TabBar(
              controller: _sourceLoadTabController,
              labelColor: AppColors.whiteColor,
              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: Colors.transparent,
              labelStyle: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
              indicator: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(8.r),
              ),
              unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.w400,
                color: AppColors.navyGreyColor,
              ),

              tabs: const [
                Tab(child: Center(child: Text("Source"))),
                Tab(child: Center(child: Text("Load"))),
              ],
            ),
          ),
          Divider(thickness: 2, color: AppColors.greyColor),
          Expanded(
            child: TabBarView(
              controller: _sourceLoadTabController,
              children: const [
                SourceTab(),
                Center(child: Text('Load Page')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
