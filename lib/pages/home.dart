import 'dart:ui';

import 'package:bloc_archi_1/bloc/counter.dart';
import 'package:bloc_archi_1/bloc/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Extensions Method
    // 1. context.read()
    // 2. context.watch()
    // 3. context.select()

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Builder(builder: (context) {
              CounterBloc counterBloc = context.watch<CounterBloc>();
              String nameUser = context.select<UserBloc, String>((value) => value.state["name"]);
              return Text(
                "${counterBloc.state}",
                style: const TextStyle(fontSize: 100),
              );
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    context.read<CounterBloc>().remove();
                  },
                  icon: const Icon(Icons.remove),
                ),
                IconButton(
                  onPressed: () {
                    context.read<CounterBloc>().add();
                  },
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
