import 'package:bloc_provider/bloc/counter.dart';
import 'package:bloc_provider/pages/data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Counter mycounter = BlocProvider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("BLOC PROVIDER"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // button -
              Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(16),
                child: InkWell(
                  onTap: () {
                    mycounter.decrement();
                  },
                  borderRadius: BorderRadius.circular(16),
                  child: const SizedBox(
                    height: 100,
                    width: 70,
                    child: Center(
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              // widget data counter
              DataWidget(),
              // button +
              Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(16),
                child: InkWell(
                  onTap: () {
                    mycounter.increment();
                  },
                  borderRadius: BorderRadius.circular(16),
                  child: const SizedBox(
                    height: 100,
                    width: 70,
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
