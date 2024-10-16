import 'package:bloc_dependency_injection/home/data_widget.dart';
import 'package:flutter/material.dart';

class CenterData extends StatelessWidget {
  const CenterData({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DataWidget(),
    );
  }
}
