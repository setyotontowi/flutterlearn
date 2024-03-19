import 'package:bloc_archi_1/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    Counter counter = context.read<Counter>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Other Page"),
      ),
      body: BlocBuilder<Counter, int>(
          bloc: counter,
          builder: (context, state) {
            return Center(
              child: Text(
                "$state",
                style: const TextStyle(fontSize: 50),
              ),
            );
          }),
    );
  }
}
