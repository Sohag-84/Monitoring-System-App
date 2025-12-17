import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitoring_system/core/theme/app_colors.dart';
import 'package:monitoring_system/features/details/data/energy_data_item_model.dart';
import 'package:monitoring_system/features/details/presentation/widgets/custom_energy_data_row.dart';

class EnergyChartListItem extends StatelessWidget {
  final List<EnergyChartData> energyChartList;
  const EnergyChartListItem({super.key, required this.energyChartList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: energyChartList.length,
      itemBuilder: (BuildContext context, int index) {
        final energryData = energyChartList[index];
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 8.h),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.borderColor),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Column(
            children: [
              // enegry title and value
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    energryData.chartTitle,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.navyBlueColor,
                    ),
                  ),
                  SizedBox(width: 15.w),
                  Text(
                    energryData.totalKwValue,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 28,
                      color: AppColors.navyBlueColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.h),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: energryData.dataItems.length,
                itemBuilder: (BuildContext context, int itemIndex) {
                  final item = energryData.dataItems[itemIndex];
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 4.h),
                    padding: EdgeInsets.all(4.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6.r),
                      border: Border.all(color: AppColors.borderColor),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Color Indicator and Data Title
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 8.w,
                              height: 8.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: item.indicatorColor,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              item.title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10.w),
                        // Divider
                        Container(
                          height: 30.h,
                          width: 1.w,
                          color: AppColors.borderColor,
                        ),

                        SizedBox(width: 10.w),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customEngeryDataRow(
                              title: "Data",
                              value:
                                  '${item.dataValue.toStringAsFixed(2)} (${item.dataPercentage.toStringAsFixed(2)}%)',
                            ),
                            customEngeryDataRow(
                              title: "Cost",
                              value: '${item.costValue} ৳',
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
