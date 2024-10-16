import 'package:bloc_dependency_injection/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DataWidget extends StatelessWidget {
  const DataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Counter mycounter = BlocProvider.of<Counter>(context);
    // shortcut
    Counter mycounter = context.read<Counter>();
    return BlocBuilder(
        bloc: mycounter,
        builder: (context, state) => Text(
              "$state",
              style: const TextStyle(
                fontSize: 50,
                color: Colors.white,
              ),
            ));
  }
}
