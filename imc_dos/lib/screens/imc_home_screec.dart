import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:imc_dos/components/gender_selector.dart';
import 'package:imc_dos/components/height_selector.dart';
import 'package:imc_dos/components/imc_result_screen.dart';
import 'package:imc_dos/components/number_selector.dart';
import 'package:imc_dos/core/app_colors.dart';
import 'package:imc_dos/core/buttos_style.dart';
import 'package:imc_dos/core/text_styles.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key});

  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreenState();
}

class _ImcHomeScreenState extends State<ImcHomeScreen> {
  String selectedGender = "";
  double selectedHeight = 160;
  int selectedAge = 18;
  int selectedWeight = 70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          //
          GenderSelector(),
          HeightSelector(
            selectedHeight: selectedHeight,
            onHeightChanged: (newHeight) {
              setState(() {
                selectedHeight = newHeight;
              });
            },
          ),
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => ImcResultScreen(
                            height: selectedHeight,
                            age: selectedAge,
                            selectedGender: selectedGender,
                          ),
                    ),
                  );
                },
                style: ButtonStyles.primaryButton,
                child: Text("Calcular IMC", style: TextStyles.bodyText),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
