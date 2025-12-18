import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitoring_system/core/theme/app_theme.dart';
import 'package:monitoring_system/features/auth/presentation/cubit/login_cubit.dart';
import 'package:monitoring_system/features/details/presentation/cubit/arrow_button_up_down/arrow_button_cubit.dart';
import 'package:monitoring_system/features/details/presentation/cubit/date_range_picker/date_range_cubit.dart';
import 'package:monitoring_system/features/details/presentation/cubit/radio_button/radio_button_cubit.dart';
import 'package:monitoring_system/routes/app_pages.dart';

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
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => LoginCubit()),
            BlocProvider(create: (context) => RadioButtonCubit()),
            BlocProvider(create: (context) => DateRangeCubit()),
            BlocProvider(create: (context) => ArrowButtonCubit()),
          ],
          child: MaterialApp.router(
            title: 'SCUBE',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            routerConfig: AppPages.router,
          ),
        );
      },
    );
  }
}
