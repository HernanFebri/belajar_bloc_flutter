import 'package:bloc_dependency_injection/404/404.dart';
import 'package:bloc_dependency_injection/bloc/counter.dart';
import 'package:bloc_dependency_injection/home/home.dart';
import 'package:bloc_dependency_injection/other/other.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyRouter {
  final Counter mycounter = Counter();

  Route onRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: mycounter,
            child: HomePage(),
          ),
        );
      case "/other":
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: mycounter,
            child: const OtherPage(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundPage(),
        );
    }
  }
}
