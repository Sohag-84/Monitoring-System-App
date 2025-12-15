import 'package:flutter/material.dart';
import 'package:monitoring_system/core/widgets/common_app_bar.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cummonAppBar(),
      body: const Center(child: Text('Welcome to the Dashboard!')),
    );
  }
}
