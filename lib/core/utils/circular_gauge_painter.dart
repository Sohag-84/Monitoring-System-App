import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:monitoring_system/core/theme/app_colors.dart';

class CircularGaugePainter extends CustomPainter {
  final double value;
  final double maxValue;
  final Color activeColor;
  final Color backgroundColor;
  final double strokeWidth;
  final String unit;
  final Color valueTextColor;
  final Color unitTextColor;

  CircularGaugePainter({
    required this.value,
    this.maxValue = 100.0,
    this.activeColor = AppColors.progressActiveColor,
    this.backgroundColor = Colors.blueAccent,
    this.strokeWidth = 15.0,
    this.unit = '',
    this.valueTextColor = Colors.black,
    this.unitTextColor = Colors.black,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = math.min(size.width, size.height) / 2 - strokeWidth / 2;

    // Background arc (the lighter part)
    final backgroundPaint = Paint()
      ..color = backgroundColor.withValues(alpha: 0.3)
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      math.pi * 0.75,
      math.pi * 1.5,
      false,
      backgroundPaint,
    );

    // Active arc (the darker blue part)
    final activePaint = Paint()
      ..color = activeColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    final sweepAngle = (value / maxValue) * (math.pi * 1.5);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      math.pi * 0.75,
      sweepAngle,
      false,
      activePaint,
    );

    // Draw the value text
    final textPainterValue = TextPainter(
      text: TextSpan(
        text: value.toStringAsFixed(2),
        style: TextStyle(
          color: valueTextColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainterValue.layout(minWidth: 0, maxWidth: size.width);
    textPainterValue.paint(
      canvas,
      Offset(
        center.dx - textPainterValue.width / 2,
        center.dy - textPainterValue.height / 2 - (size.height * 0.05),
      ),
    );

    // Draw the unit text
    final textPainterUnit = TextPainter(
      text: TextSpan(
        text: unit,
        style: TextStyle(
          color: unitTextColor,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainterUnit.layout(minWidth: 0, maxWidth: size.width);
    textPainterUnit.paint(
      canvas,
      Offset(
        center.dx - textPainterUnit.width / 2,
        center.dy + textPainterValue.height / 2 - (size.height * 0.05),
      ),
    );
  }

  @override
  bool shouldRepaint(covariant CircularGaugePainter oldDelegate) {
    return oldDelegate.value != value ||
        oldDelegate.maxValue != maxValue ||
        oldDelegate.activeColor != activeColor ||
        oldDelegate.backgroundColor != backgroundColor ||
        oldDelegate.strokeWidth != strokeWidth ||
        oldDelegate.unit != unit;
  }
}
