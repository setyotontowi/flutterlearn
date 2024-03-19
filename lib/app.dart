import 'package:bloc_archi_1/bloc/theme.dart';
import 'package:bloc_archi_1/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: context.read<ThemeBloc>(),
        builder: (context, state) {
          return MaterialApp(
            theme: state == true ? ThemeData.light() : ThemeData.dark(),
            home: const HomePage(),
          );
        });
  }
}
