import 'package:go_router/go_router.dart';
import 'package:monitoring_system/features/auth/presentation/views/login_view.dart';
import 'package:monitoring_system/features/dashboard/presentation/views/dashboard_view.dart';
import 'package:monitoring_system/features/details/presentation/views/grid_item_details_view.dart';
import 'package:monitoring_system/features/details/presentation/views/source_tab_details_view.dart';
import 'package:monitoring_system/routes/app_routes.dart';

class AppPages {
  static final router = GoRouter(
    initialLocation: AppRoutes.login.path,
    routes: [
      // Login Route
      GoRoute(
        path: AppRoutes.login.path,
        name: AppRoutes.login.name,
        builder: (context, state) => const LoginView(),
      ),

      // Dashboard Route
      GoRoute(
        path: AppRoutes.dashboard.path,
        name: AppRoutes.dashboard.name,
        builder: (context, state) => const DashboardView(),
      ),

      // Grid Item Details Route
      GoRoute(
        path: AppRoutes.gridItemDetails.path,
        name: AppRoutes.gridItemDetails.name,
        builder: (context, state) => const GridItemDetailsView(),
      ),

      // Source Tab Details Route
      GoRoute(
        path: AppRoutes.srouceTabDetails.path,
        name: AppRoutes.srouceTabDetails.name,
        builder: (context, state) => const SourceTabDetailsView(),
      ),
    ],
  );
}
