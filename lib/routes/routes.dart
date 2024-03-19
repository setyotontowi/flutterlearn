import 'package:bloc_archi_1/404/404.dart';
import 'package:bloc_archi_1/bloc/counter.dart';
import 'package:bloc_archi_1/home/home.dart';
import 'package:bloc_archi_1/other/other.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyRouter {
  final Counter myCounter = Counter();

  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(value: myCounter, child: HomePage()),
        );
      case "/other":
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(value: myCounter, child: OtherPage()),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundPage(),
        );
    }
  }
}
