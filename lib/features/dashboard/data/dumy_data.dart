import 'package:monitoring_system/core/constants/app_assets.dart';
import 'package:monitoring_system/core/theme/app_colors.dart';
import 'package:monitoring_system/features/dashboard/data/grid_item_model.dart';
import 'package:monitoring_system/features/dashboard/data/source_data_model.dart';

final List<SourceDataModel> sourceDataItems = [
  SourceDataModel(
    iconPath: solarPannelIcon,
    title: 'Data View',
    status: "(Active)",
    data1Value: "55505.63",
    data2Value: "58805.63",
    titleIndicatorColor: AppColors.activeColor,
  ),
  SourceDataModel(
    iconPath: batteryIcon,
    title: 'Data Type 2',
    status: "(Inactive)",
    data1Value: "55505.63",
    data2Value: "58805.63",
    titleIndicatorColor: AppColors.inactiveColor,
  ),
  SourceDataModel(
    iconPath: powerGridIcon,
    title: 'Data Type 3',
    status: "(Active)",
    data1Value: "55505.63",
    data2Value: "58805.63",
    titleIndicatorColor: AppColors.activeColor,
  ),

  SourceDataModel(
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

final List<GridItemModel> gridItems = [
  GridItemModel(iconPath: chartIcon, title: 'Analysis Pro'),
  GridItemModel(iconPath: generatorIcon, title: 'G. Generator'),
  GridItemModel(iconPath: plantSummeryIcon, title: 'Plant Summery'),
  GridItemModel(iconPath: fireIcon, title: 'Natural Gas'),
  GridItemModel(iconPath: generatorIcon, title: 'G. Generator'),
  GridItemModel(iconPath: tapIcon, title: 'Water Process'),
];
