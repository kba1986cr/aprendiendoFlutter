import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    //return const Placeholder();
    return Container(
      color: const Color.fromARGB(255, 59, 194, 120),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Hola soy Harold"),
          Text("Hola soy Harold"),
          Text("Hola soy Harold"),
          Text("Hola soy Harold"),
        ],
      ),
    );
  }
}
