import 'package:flutter/material.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String? selecterGender;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Hombre
        Column(
          children: [
            //
            //Image.asset("assets/images/male.png"),
            Text("Hola", style: TextStyle(color: Colors.white)),
          ],
        ),
        //Mujer
        Column(
          children: [
            //
          ],
        ),
      ],
    );
  }
}
