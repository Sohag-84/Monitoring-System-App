import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitoring_system/core/theme/app_colors.dart';
import 'package:monitoring_system/core/widgets/common_app_bar.dart';
import 'package:monitoring_system/features/details/data/dummy_data.dart';
import 'package:monitoring_system/features/details/presentation/cubit/radio_button_cubit.dart';
import 'package:monitoring_system/features/details/presentation/widgets/circular_chart_widget.dart';
import 'package:monitoring_system/features/details/presentation/widgets/energy_chart_item.dart';
import 'package:monitoring_system/features/details/presentation/widgets/radio_button_widget.dart';

class SourceTabDetailsView extends StatelessWidget {
  const SourceTabDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: commonAppBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40.h),
                  width: double.infinity,
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight - 40,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r),
                    ),
                    border: Border.all(color: AppColors.borderColor),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 50),
                      CircularChartWidget(value: 55),
                      sortOptionRadioRow(),
                      //today's engery chart list
                      EnergyChartListItem(energyChartList: todaysEnergyCharts),
                    ],
                  ),
                ),

                // data view and revenue view radio buttons
                dataRevenureRadioRow(context),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget sortOptionRadioRow() {
    return BlocBuilder<RadioButtonCubit, RadioButtonState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Data View Option
              radioButtonWidget(
                context,
                label: "Today's Data",
                value: "Today's Data",
                groupValue: state.selectSortOption,
                onTap: () {
                  context.read<RadioButtonCubit>().selectSortOption(
                    newSortOption: "Today's Data",
                  );
                },
              ),

              // Revenue View Option
              radioButtonWidget(
                context,
                label: 'Custom Date Data',
                value: 'Custom Date Data',
                groupValue: state.selectSortOption,
                onTap: () {
                  context.read<RadioButtonCubit>().selectSortOption(
                    newSortOption: 'Custom Date Data',
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Widget dataRevenureRadioRow(BuildContext context) {
    return Positioned(
      top: MediaQuery.sizeOf(context).height * 0.025,
      left: 25.w,
      right: 25.w,
      child: BlocBuilder<RadioButtonCubit, RadioButtonState>(
        builder: (context, state) {
          return Container(
            height: 48.h,
            padding: EdgeInsets.only(right: 12.w),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: AppColors.borderColor),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Data View Option
                radioButtonWidget(
                  context,
                  label: 'Data View',
                  value: 'Data View',
                  groupValue: state.selectedOption,
                  onTap: () {
                    context.read<RadioButtonCubit>().selectOption(
                      newOption: 'Data View',
                    );
                  },
                ),

                // Revenue View Option
                radioButtonWidget(
                  context,
                  label: 'Revenue View',
                  value: 'Revenue View',
                  groupValue: state.selectedOption,
                  onTap: () {
                    context.read<RadioButtonCubit>().selectOption(
                      newOption: 'Revenue View',
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
