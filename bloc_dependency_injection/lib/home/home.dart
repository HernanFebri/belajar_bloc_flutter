import 'package:bloc_dependency_injection/bloc/counter.dart';
import 'package:bloc_dependency_injection/home/merah.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  Counter mycounter = Counter();

  @override
  Widget build(BuildContext context) {
    // Counter mycounter = BlocProvider.of<Counter>(context);
    // shortcut
    Counter mycounter = context.read<Counter>();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("DEPENDENCY INJECTION"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Material(
              color: Colors.green,
              child: InkWell(
                onTap: () {
                  mycounter.decrement();
                },
                child: const SizedBox(
                  height: 100,
                  width: 100,
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Merah(),
            Material(
              color: Colors.green,
              child: InkWell(
                onTap: () {
                  mycounter.increment();
                },
                child: const SizedBox(
                  height: 100,
                  width: 100,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
