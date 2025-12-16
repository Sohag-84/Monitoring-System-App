import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitoring_system/core/theme/app_colors.dart';
import 'package:monitoring_system/core/widgets/common_app_bar.dart';
import 'package:monitoring_system/features/dashboard/presentation/part/summery_tab.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: commonAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Tab Bar Container
            dashboardTabBarSection(),
          ],
        ),
      ),
    );
  }

  Widget dashboardTabBarSection() {
    return Container(
      height: 500.h,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        children: [
          TabBar(
            controller: _tabController,
            labelColor: AppColors.whiteColor,
            labelStyle: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: AppColors.greyColor,
            indicator: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(8.r),
            ),
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w400,
              color: AppColors.navyGreyColor,
            ),
            tabs: const [
              Tab(child: Center(child: Text("Summery"))),
              Tab(child: Center(child: Text("SLD"))),
              Tab(child: Center(child: Text("Data"))),
            ],
          ),
          SizedBox(height: 8.h),

          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                SummeryTab(),
                Center(child: Text('SLD Page')),
                Center(child: Text('Data Page')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
