import 'package:bloc_archi_1/app.dart';
import 'package:bloc_archi_1/bloc/counter.dart';
import 'package:bloc_archi_1/bloc/theme.dart';
import 'package:bloc_archi_1/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
        BlocProvider(
          create: (context) => ThemeBloc(),
        ),
      ],
      child: App(),
    );
  }
}
