import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //
        Spacer(),
        ElevatedButton(
          onPressed: () {
            print("Pulsado");
          },
          child: Text("Soy un boton :)"),
          onLongPress: () {
            print("Pulsadooooooo");
          },
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.green),
          ),
        ),
        OutlinedButton(onPressed: null, child: Text("Outlined")),
        TextButton(
          onPressed: () {
            print("Hello World");
          },
          child: Text("TextButton"),
        ),
        TextButton.icon(
          onPressed: () {
            print("Puta Madre");
          },
          label: Icon(Icons.access_alarm),
        ),
        FloatingActionButton(
          onPressed: () {
            print("Menu");
          },
          child: Icon(Icons.add_home),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.add_card)),
        Spacer(),
        //
      ],
    );
  }
}
