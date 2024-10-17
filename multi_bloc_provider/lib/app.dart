import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_bloc_provider/bloc/theme.dart';
import 'package:multi_bloc_provider/pages/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, bool>(
      bloc: context.read<ThemeBloc>(),
      builder: (context, state) {
        return MaterialApp(
          theme: state == true
              ? ThemeData.light(useMaterial3: false)
              : ThemeData.dark(useMaterial3: false),
          home: const HomePage(),
        );
      },
    );
  }
}
