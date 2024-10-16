import 'package:bloc_dependency_injection/bloc/counter.dart';
import 'package:bloc_dependency_injection/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => Counter(),
        child: MaterialApp(
          theme: ThemeData(useMaterial3: false),
          home: HomePage(),
        ));
  }
}
