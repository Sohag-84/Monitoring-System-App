import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monitoring_system/core/theme/app_colors.dart';
import 'package:monitoring_system/features/details/presentation/cubit/radio_button_cubit.dart';

Widget radioButtonWidget(
  BuildContext context, {
  required String label,
  required String value,
  required String groupValue,
}) {
  return GestureDetector(
    onTap: () {
      context.read<RadioButtonCubit>().selectOption(newOption: value);
    },
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Radio<String>(
          value: value,
          groupValue: groupValue,
          onChanged: (String? newValue) {
            if (newValue != null) {
              context.read<RadioButtonCubit>().selectOption(
                newOption: newValue,
              );
            }
          },
          activeColor: AppColors.primaryColor,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
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
