import 'package:flutter/material.dart';

class SourceDataModel {
  final String iconPath;
  final String title;
  final String status;
  final String data1Label;
  final String data1Value;
  final String data2Label;
  final String data2Value;
  final Color titleIndicatorColor;
  
  SourceDataModel({
    required this.iconPath,
    required this.title,
    required this.status,
    this.data1Label = "Data 1",
    required this.data1Value,
    this.data2Label = "Data 2",
    required this.data2Value,
    required this.titleIndicatorColor,
  });
}
