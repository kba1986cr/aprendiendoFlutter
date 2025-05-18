import 'package:flutter/material.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            //
            //Image.asset("assets/images/male.png"),
          ],
        ),
        Column(
          children: [
            //
            //Image.asset("assets/images/female.png"),
          ],
        ),
      ],
    );
  }
}
