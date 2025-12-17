import 'package:flutter/material.dart';

class EnergyChartData {
  final String chartTitle;
  final String totalKwValue;
  final List<DataItem> dataItems;

  EnergyChartData({
    required this.chartTitle,
    required this.totalKwValue,
    required this.dataItems,
  });
}

class DataItem {
  final String title;
  final Color indicatorColor;
  final double dataValue;
  final double dataPercentage;
  final double costValue;
  final String currency;

  DataItem({
    required this.title,
    required this.indicatorColor,
    required this.dataValue,
    required this.dataPercentage,
    required this.costValue,
    required this.currency,
  });
}
