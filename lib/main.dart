import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class CounterCubit extends Cubit<int> {
  CounterCubit({this.initData = 0}) : super(initData);

  int initData;

  void tambahData() {
    emit(state + 1);
  }

  void kurangData() {
    emit(state - 1);
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    CounterCubit myCounter = CounterCubit();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Cubit Apps"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder(
              initialData: myCounter.initData,
              stream: myCounter.stream,
              builder: ((context, snapshot) {
                return Center(
                  child: Text(
                    "${snapshot.data}",
                    style: const TextStyle(fontSize: 50.0),
                  ),
                );
              })),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    myCounter.tambahData();
                  },
                  icon: const Icon(Icons.add)),
              IconButton(
                  onPressed: () {
                    myCounter.kurangData();
                  },
                  icon: const Icon(Icons.remove)),
            ],
          )
        ],
      ),
    );
  }
}
