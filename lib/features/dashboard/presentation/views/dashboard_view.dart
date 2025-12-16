import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:monitoring_system/core/theme/app_colors.dart';
import 'package:monitoring_system/core/widgets/common_app_bar.dart';
import 'package:monitoring_system/features/dashboard/data/dumy_data.dart';
import 'package:monitoring_system/features/dashboard/presentation/part/summery_tab.dart';
import 'package:monitoring_system/features/dashboard/presentation/widgets/grid_item_card.dart';
import 'package:monitoring_system/routes/app_routes.dart';

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
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 2.h),
        child: Column(
          children: [
            SizedBox(height: 8.h),
            // Tab Bar Container
            dashboardTabBarSection(),
            SizedBox(height: 10.h),

            // Grid Items
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8.h,
                crossAxisSpacing: 12.w,
                mainAxisExtent: 42.h,
              ),
              itemCount: gridItems.length,
              itemBuilder: (BuildContext context, int index) {
                final item = gridItems[index];
                return GridItemCard(
                  item: item,
                  onTap: () {
                    context.pushNamed(AppRoutes.gridItemDetails.name);
                  },
                );
              },
            ),

            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }

  Widget dashboardTabBarSection() {
    return Container(
      height: 500.h,
      padding: EdgeInsets.only(bottom: 8.w),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 38.h,
            child: TabBar(
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
          ),
          SizedBox(height: 8.h),

          // Tab Bar View
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                SummeryTab(),
                Center(child: Text('No Data Found')),
                Center(child: Text('No Data Found')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
