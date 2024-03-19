import 'package:bloc_archi_1/home/center_data_widget.dart';
import 'package:flutter/material.dart';

class Biru extends StatelessWidget {
  const Biru({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      color: Colors.blue,
      child: CenterData(),
    );
  }
}
