import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 86.0),
      child: Container(
        // color: Color.fromARGB(255, 59, 194, 120),
        // height: double.infinity,
        child: const Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Hola soy Harold 1"),
            Expanded(child: Text("Hola soy Harold 2")),
            Text("Hola soy Harold 3"),
            //Text("Hola soy Harold 4"),
          ],
        ),
      ),
    );
  }
}
