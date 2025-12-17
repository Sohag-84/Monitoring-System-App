import 'package:flutter/material.dart';
import 'package:monitoring_system/features/details/presentation/widgets/custom_energy_data_row.dart';

Widget customDataCostRow({
  required String dataLabel,
  required String dataValue,
  required String costLabel,
  required String costValue,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      customEngeryDataRow(title: dataLabel, value: dataValue),
      customEngeryDataRow(title: costLabel, value: costValue),
    ],
  );
}
