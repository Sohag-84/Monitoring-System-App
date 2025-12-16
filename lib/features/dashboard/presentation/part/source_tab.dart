import 'package:flutter/material.dart';
import 'package:monitoring_system/features/dashboard/data/dumy_data.dart';
import 'package:monitoring_system/features/dashboard/presentation/widgets/source_tab_data_view_card.dart';

class SourceTab extends StatefulWidget {
  const SourceTab({super.key});

  @override
  State<SourceTab> createState() => _SourceTabState();
}

class _SourceTabState extends State<SourceTab> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: sourceDataItems.length,
      itemBuilder: (BuildContext context, int index) {
        final data = sourceDataItems[index];
        return sourceTabDataViewCard(data: data, onTap: () {});
      },
    );
  }
}
