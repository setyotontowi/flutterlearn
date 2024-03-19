import 'package:bloc_archi_1/bloc/counter.dart';
import 'package:bloc_archi_1/home/home.dart';
import 'package:bloc_archi_1/other/other.dart';
import 'package:bloc_archi_1/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final Counter myCounter = Counter();

  final router = MyRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: router.onGenerateRoute,
    );
  }
}
