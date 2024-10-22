import 'package:bloc_selector/bloc/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    UserBloc userBloc = context.read<UserBloc>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("BLOC SELECTOR"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // BlocBuilder<UserBloc, Map<String, dynamic>>(
          //   bloc: userBloc,
          //   builder: (context, state) {
          //     print("TEXT NAMA => BUILD");
          //     return Text(
          //       "NAMA : ${state['name']}",
          //     );
          //   },
          // ),
          // BlocBuilder<UserBloc, Map<String, dynamic>>(
          //   bloc: userBloc,
          //   builder: (context, state) {
          //     print("TEXT UMUR => BUILD");
          //     return Text(
          //       "UMUR : ${state['age']} Tahun",
          //     );
          //   },
          // ),

          BlocSelector<UserBloc, Map<String, dynamic>, String>(
            selector: (state) => state['name'],
            builder: (context, state) {
              print("TEXT NAMA => BUILD");
              return Text(
                "NAMA : $state",
              );
            },
          ),
          BlocSelector<UserBloc, Map<String, dynamic>, int>(
            selector: (state) => state['age'],
            builder: (context, state) {
              print("TEXT UMUR => BUILD");
              return Text(
                "UMUR : $state",
              );
            },
          ),

          const SizedBox(
            height: 20,
          ),
          TextField(
            onChanged: (value) => userBloc.changeName(value),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  userBloc.changeAge(userBloc.state['age'] - 1);
                },
                icon: const Icon(Icons.remove),
              ),
              IconButton(
                onPressed: () {
                  userBloc.changeAge(userBloc.state['age'] + 1);
                },
                icon: const Icon(Icons.add),
              )
            ],
          )
        ],
      ),
    );
  }
}
