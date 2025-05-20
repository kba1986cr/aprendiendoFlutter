import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:imc_dos/components/gender_selector.dart';
import 'package:imc_dos/components/height_selector.dart';
import 'package:imc_dos/components/number_selector.dart';
import 'package:imc_dos/core/app_colors.dart';
import 'package:imc_dos/core/text_styles.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key});

  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreenState();
}

class _ImcHomeScreenState extends State<ImcHomeScreen> {
  String selectedGender = "";
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
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                backgroundColor: WidgetStatePropertyAll(AppColors.primary),
              ),
              child: Text("Calcular IMC", style: TextStyles.bodyText),
            ),
          ),
        ),
      ],
    );
  }
}
