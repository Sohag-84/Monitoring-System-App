import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitoring_system/core/constants/app_strings.dart';

AppBar commonAppBar() {
  return AppBar(
    title: Text(scm),
    actions: [
      Stack(
        children: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {},
          ),
          Positioned(
            right: 15,
            top: 13,
            child: Container(
              padding: EdgeInsets.all(2.w),
              height: 6.h,
              width: 6.w,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
