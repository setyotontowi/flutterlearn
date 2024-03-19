import 'package:bloc_archi_1/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DataWidget extends StatelessWidget {
  const DataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: context.read<Counter>(),
      builder: (context, state) {
        return Text(
          "$state",
          style: const TextStyle(fontSize: 50, color: Colors.white),
        );
      },
    );
  }
}
