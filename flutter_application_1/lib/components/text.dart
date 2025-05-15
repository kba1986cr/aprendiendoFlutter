import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        //
        Spacer(),
        Text("Harold", style: TextStyle(fontSize: 24)),
        Text("Harold", style: TextStyle(fontWeight: FontWeight.bold)),
        Text("Harold", style: TextStyle(fontStyle: FontStyle.italic)),
        Text(
          "Harold",
          style: TextStyle(
            color: Colors.red,
            fontSize: 20,
            backgroundColor: Colors.amberAccent,
          ),
        ),
        Text(
          "Harold",
          style: TextStyle(
            decoration: TextDecoration.underline,
            fontSize: 39,
            decorationColor: Colors.red,
          ),
        ),
        Text(
          "Harold estuvo aca perros de galera",
          style: TextStyle(letterSpacing: 4, fontSize: 20),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Spacer(),
      ],
    );
  }
}
