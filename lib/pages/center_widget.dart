import 'package:bloc_archi_1/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder(
        bloc: BlocProvider.of<Counter>(context),
        builder: (context, state) {
          return Text(
            "$state",
            style: TextStyle(fontSize: 50, color: Colors.white),
          );
        },
      ),
    );
  }
}
