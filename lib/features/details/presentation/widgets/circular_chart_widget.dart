import 'package:flutter/material.dart';
import 'package:monitoring_system/core/theme/app_colors.dart';
import 'package:monitoring_system/core/utils/circular_gauge_painter.dart';

class CircularChartWidget extends StatelessWidget {
  final double value;
  final String unit;

  const CircularChartWidget({
    super.key,
    required this.value,
    this.unit = 'kWh/Sqft',
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 170,
        height: 170,
        child: CustomPaint(
          painter: CircularGaugePainter(
            value: value,
            unit: unit,
            activeColor: AppColors.progressActiveColor,
            backgroundColor: AppColors.progressInactiveColor,
            maxValue: 100.0,
            strokeWidth: 20.0,
            unitTextColor: AppColors.navyBlueColor,
          ),
        ),
      ),
    );
  }
}
