import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:monitoring_system/core/theme/app_colors.dart';
import 'package:monitoring_system/features/details/presentation/cubit/date_range_picker/date_range_cubit.dart';

class DateRangeSearchBar extends StatefulWidget {
  const DateRangeSearchBar({super.key});

  @override
  State<DateRangeSearchBar> createState() => _DateRangeSearchBarState();
}

class _DateRangeSearchBarState extends State<DateRangeSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: BlocBuilder<DateRangeCubit, DateRangeState>(
        builder: (context, state) {
          return Row(
            children: [
              Expanded(
                child: dateField(
                  context,
                  label: state.fromDate == null
                      ? "From Date"
                      : DateFormat("dd-MM-yyyy").format(state.fromDate!),
                  onTap: () => pickDate(
                    context,
                    onSelect: (date) {
                      context.read<DateRangeCubit>().setFromDate(date);
                    },
                  ),
                ),
              ),
              SizedBox(width: 6.w),
              Expanded(
                child: dateField(
                  context,
                  label: state.toDate == null
                      ? "To Date"
                      : DateFormat("dd-MM-yyyy").format(state.toDate!),
                  onTap: () => pickDate(
                    context,
                    onSelect: (date) {
                      context.read<DateRangeCubit>().setToDate(date);
                    },
                  ),
                ),
              ),

              SizedBox(width: 6.w),

              searchButton(context),
            ],
          );
        },
      ),
    );
  }
}

Widget dateField(
  BuildContext context, {
  required String label,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 36.h,
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.borderColor),
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 12.sp,
              color: label.split(" ").last.contains('Date')
                  ? AppColors.greyColor
                  : AppColors.blackColor,
            ),
          ),
          Icon(
            Icons.calendar_today_outlined,
            size: 20.sp,
            color: AppColors.navyGreyColor,
          ),
        ],
      ),
    ),
  );
}

Widget searchButton(BuildContext context) {
  return Container(
    height: 36.h,
    width: 36.w,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.primaryColor),
      borderRadius: BorderRadius.circular(8.r),
    ),
    child: IconButton(
      icon: Icon(Icons.search, color: AppColors.primaryColor, size: 20.sp),
      onPressed: () {
        context.read<DateRangeCubit>().search();
      },
    ),
  );
}

Future<void> pickDate(
  BuildContext context, {
  required Function(DateTime) onSelect,
}) async {
  final picked = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2000),
    lastDate: DateTime.now(),
  );

  if (picked != null) {
    onSelect(picked);
  }
}
