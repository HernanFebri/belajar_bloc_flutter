import 'package:bloc_listener/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  Counter mycounter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("BLOC CONSUMER"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocConsumer<Counter, int>(
            bloc: mycounter,
            buildWhen: (previous, current) {
              if (current >= 10) {
                return true;
              } else {
                return false;
              }
            },
            builder: (context, state) {
              return Text(
                "$state",
                style: const TextStyle(
                  fontSize: 50,
                ),
              );
            },
            listener: (context, state) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  duration: Duration(seconds: 1),
                  content: Text("Data Genap"),
                ),
              );
            },
            listenWhen: (previous, current) {
              if (current % 2 == 0) {
                return true;
              } else {
                return false;
              }
            },
          ),
          // BlocListener<Counter, int>(
          //   bloc: mycounter,
          //   listener: (context, state) {
          //     ScaffoldMessenger.of(context).showSnackBar(
          //       const SnackBar(
          //         duration: Duration(seconds: 1),
          //         content: Text("Data Genap"),
          //       ),
          //     );
          //   },
          //   listenWhen: (previous, current) {
          //     if (current % 2 == 0) {
          //       return true;
          //     } else {
          //       return false;
          //     }
          //   },
          //   child: BlocBuilder<Counter, int>(
          //     bloc: mycounter,
          //     builder: (context, state) {
          //       return Text(
          //         "$state",
          //         style: const TextStyle(
          //           fontSize: 50,
          //         ),
          //       );
          //     },
          //   ),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    mycounter.decrement();
                  },
                  icon: const Icon(Icons.remove)),
              IconButton(
                  onPressed: () {
                    mycounter.increment();
                  },
                  icon: const Icon(Icons.add))
            ],
          )
        ],
      ),
    );
  }
}
