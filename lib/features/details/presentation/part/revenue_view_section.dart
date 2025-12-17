import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitoring_system/core/theme/app_colors.dart';
import 'package:monitoring_system/features/details/presentation/widgets/circular_chart_widget.dart';
import 'package:monitoring_system/features/details/presentation/widgets/custom_data_cost_row.dart';

class RevenueViewSection extends StatelessWidget {
  const RevenueViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        CircularChartWidget(value: 897455, unit: "tk", maxValue: 1000000),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.borderColor),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Column(
              children: [
                //header section
                Container(
                  height: 42.h,
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.borderColor),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.bar_chart_rounded,
                        color: AppColors.navyGreyColor,
                      ),
                      SizedBox(width: 10.w),
                      Text(
                        "Data & Cost Info",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.navyBlueColor,
                        ),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.keyboard_double_arrow_up_outlined,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ],
                  ),
                ),

                //cost info data
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      customDataCostRow(
                        dataLabel: 'Data 1',
                        dataValue: '2798.50 (29.53%)',
                        costLabel: 'Cost 1',
                        costValue: '35689 ৳',
                      ),

                      SizedBox(height: 6.h),

                      customDataCostRow(
                        dataLabel: 'Data 2',
                        dataValue: '2798.50 (29.53%)',
                        costLabel: 'Cost 2',
                        costValue: '35689 ৳',
                      ),
                      SizedBox(height: 6.h),
                      customDataCostRow(
                        dataLabel: 'Data 3',
                        dataValue: '2798.50 (29.53%)',
                        costLabel: 'Cost 3',
                        costValue: '35689 ৳',
                      ),
                      SizedBox(height: 6.h),

                      customDataCostRow(
                        dataLabel: 'Data 4',
                        dataValue: '2798.50 (29.53%)',
                        costLabel: 'Cost 4',
                        costValue: '35689 ৳',
                      ),
                    ],
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
