import 'package:go_router/go_router.dart';
import 'package:monitoring_system/features/auth/presentation/views/login_view.dart';
import 'package:monitoring_system/features/dashboard/presentation/view/dashboard_view.dart';
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
    ],
  );
}
