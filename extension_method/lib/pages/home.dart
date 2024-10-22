import 'package:extension_method/bloc/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // EXTENTION METHOD
    // 1. context.read()
    // 2. context.watch()
    // 3. context.select()

    UserBloc myUser = context.read<UserBloc>();
    // CounterBloc myCounter = context.read<CounterBloc>(); // hanya membaca 1x (pertama kali)
    // CounterBloc myCounter = context.watch<CounterBloc>(); // membaca berkali-kali (ketika state pada bloc berubah)

    // membaca berkali-kali (ketika state pada bloc berubah)
    // String nameUser = context.select<UserBloc, String>((value) => value.state["name"],);
    // int ageUser = context.select<UserBloc, int>((value) => value.state["age"],);
    print("BUILD SCAFFOLD");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Builder(builder: (context) {
              String nameUser = context.select<UserBloc, String>(
                (value) => value.state["name"],
              );
              print("BUILD TEXT NAMA");
              return Text("NAMA: $nameUser");
            }),
            Builder(builder: (context) {
              int ageUser = context.select<UserBloc, int>(
                (value) => value.state["age"],
              );
              print("BUILD TEXT UMUR");
              return Text("UMUR: $ageUser");
            }),

            // Builder(builder: (context) {
            //   CounterBloc myCounter = context.watch<CounterBloc>();
            //   print("BUILD TEXT");
            //   return Text(
            //     "${myCounter.state}",
            //     style: const TextStyle(
            //       fontSize: 100,
            //     ),
            //   );
            // }),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () => myUser.changeAge(myUser.state["age"] - 1),
                  icon: const Icon(Icons.remove),
                ),
                IconButton(
                  onPressed: () => myUser.changeAge(myUser.state["age"] + 1),
                  icon: const Icon(Icons.add),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
