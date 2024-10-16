import 'package:bloc_dependency_injection/home/kuning.dart';
import 'package:flutter/material.dart';

class Merah extends StatelessWidget {
  const Merah({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.red,
      child: Kuning(),
    );
  }
}
