import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:imc_dos/components/gender_selector.dart';
import 'package:imc_dos/components/height_selector.dart';
import 'package:imc_dos/components/number_selector.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key});

  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreenState();
}

class _ImcHomeScreenState extends State<ImcHomeScreen> {
  String? selectedGender;
  double? selectedHeight;
  int selectedAge = 18;
  int selectedWeight = 70;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //
        GenderSelector(),
        HeightSelector(),
        Row(
          children: [
            NumberSelector(
              value: selectedWeight,
              title: "Peso".toUpperCase(),
              onIncrement: () {
                setState(() {
                  selectedWeight++;
                });
              },
              onDecrement: () {
                setState(() {
                  selectedWeight--;
                });
              },
            ),
            NumberSelector(
              title: "Edad".toUpperCase(),
              value: selectedAge,
              onIncrement: () {
                setState(() {
                  selectedAge++;
                });
              },
              onDecrement: () {
                setState(() {
                  selectedAge--;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
