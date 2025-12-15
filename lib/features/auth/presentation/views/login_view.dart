import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:monitoring_system/core/constants/app_assets.dart';
import 'package:monitoring_system/core/constants/app_strings.dart';
import 'package:monitoring_system/core/theme/app_colors.dart';
import 'package:monitoring_system/core/widgets/custom_button.dart';
import 'package:monitoring_system/features/auth/presentation/cubit/login_cubit.dart';
import 'package:monitoring_system/routes/app_routes.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top Section - Logo and Title
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.4,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // App Logo
                  Image.asset(appLogo, width: 100.w, height: 101.h),

                  SizedBox(height: 10.h),
                  Text(
                    appName,
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 32.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    appTagline,
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 18.sp,
                    ),
                  ),
                ],
              ),
            ),

            // Bottom Section - Login Form
            Container(
              height: MediaQuery.sizeOf(context).height * 0.55,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r),
                ),
              ),
              child: BlocBuilder<LoginCubit, LoginState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      Text(
                        login,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 32.h),

                      // Username TextField
                      TextField(
                        decoration: InputDecoration(
                          hintText: usernameHint,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.r),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),

                      // Password TextField
                      TextField(
                        obscureText: !state.isPasswordVisible,
                        decoration: InputDecoration(
                          hintText: passwordHint,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.r),
                            ),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              state.isPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              context
                                  .read<LoginCubit>()
                                  .togglePasswordVisibility();
                            },
                          ),
                        ),
                      ),

                      // Forgot Password Text
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            print('Forgot password tapped!');
                          },
                          child: Text(
                            forgotPassword,
                            style: TextStyle(
                              color: AppColors.greyColor,
                              fontSize: 13,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),

                      // Login Button
                      customButton(
                        onTap: () {
                          context.pushNamed(AppRoutes.dashboard.name);
                        },
                        text: login,
                      ),
                      SizedBox(height: 8.h),
                      // Register Now Text
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              dontHaveAccount,
                              style: TextStyle(
                                color: AppColors.greyColor,
                                fontSize: 14.sp,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print('Register Now tapped!');
                              },
                              child: Text(
                                registerNow,
                                style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
