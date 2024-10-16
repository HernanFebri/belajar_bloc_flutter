import 'package:bloc_provider/bloc/counter.dart';
import 'package:bloc_provider/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => Counter(),
        child: MaterialApp(
          home: const HomePage(),
          theme: ThemeData(useMaterial3: false),
        ));
  }
}
