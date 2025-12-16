import 'package:monitoring_system/core/constants/app_assets.dart';
import 'package:monitoring_system/core/theme/app_colors.dart';
import 'package:monitoring_system/features/dashboard/data/model.dart';

final List<DataCardModel> sourceDataItems = [
  DataCardModel(
    iconPath: solarPannelIcon,
    title: 'Data View',
    status: "(Active)",
    data1Value: "55505.63",
    data2Value: "58805.63",
    titleIndicatorColor: AppColors.activeColor,
  ),
  DataCardModel(
    iconPath: batteryIcon,
    title: 'Data Type 2',
    status: "(Inactive)",
    data1Value: "55505.63",
    data2Value: "58805.63",
    titleIndicatorColor: AppColors.inactiveColor,
  ),
  DataCardModel(
    iconPath: powerGridIcon,
    title: 'Data Type 3',
    status: "(Active)",
    data1Value: "55505.63",
    data2Value: "58805.63",
    titleIndicatorColor: AppColors.activeColor,
  ),

  DataCardModel(
    iconPath: solarPannelIcon,
    title: 'Total Solar',
    status: "(Active)",
    data1Label: "Live Power",
    data2Label: "Total Energy",
    data1Value: "55505.63 KW",
    data2Value: "58805.63 KWh",
    titleIndicatorColor: AppColors.activeColor,
  ),
];
