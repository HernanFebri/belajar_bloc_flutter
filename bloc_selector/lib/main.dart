import 'package:bloc_selector/bloc/user.dart';
import 'package:bloc_selector/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      home: BlocProvider(
        create: (context) => UserBloc(),
        child: const HomePage(),
      ),
    );
  }
}
