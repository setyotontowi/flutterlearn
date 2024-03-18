import 'package:bloc_archi_1/bloc/counter.dart';
import 'package:bloc_archi_1/pages/center_widget.dart';
import 'package:flutter/material.dart';

class DataWidget extends StatelessWidget {
  const DataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      color: Colors.red,
      child: CenterWidget(),
    );
  }
}
