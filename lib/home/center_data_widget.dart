import 'package:bloc_archi_1/home/data_widget.dart';
import 'package:flutter/material.dart';

class CenterData extends StatelessWidget {
  const CenterData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: DataWidget(),
    );
  }
}
