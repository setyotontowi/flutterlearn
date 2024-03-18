import 'package:bloc_archi_1/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Counter myCounter = Counter();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Listener"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // The difference between Listen and Build is the render. Build will re render UI after state change. Listen only listen
          BlocListener(
            bloc: myCounter,
            listener: (context, state) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text("Sudah Mencapai 15")));
            },
            listenWhen: (previous, current) {
              if ((current as int) % 2 == 0) return true;
              return false;
            },
            child: BlocBuilder(
              bloc: myCounter,
              builder: (context, state) {
                return Text(
                  "$state",
                  style: const TextStyle(fontSize: 50),
                );
              },
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    myCounter.decrement();
                  },
                  icon: const Icon(Icons.remove)),
              IconButton(
                  onPressed: () {
                    myCounter.increment();
                  },
                  icon: const Icon(Icons.add)),
            ],
          )
        ],
      ),
    );
  }
}
