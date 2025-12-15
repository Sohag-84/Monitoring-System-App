import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitoring_system/core/theme/app_theme.dart';
import 'package:monitoring_system/features/auth/presentation/views/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Monitoring System',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          home: const LoginView(),
        );
      },
    );
  }
}
