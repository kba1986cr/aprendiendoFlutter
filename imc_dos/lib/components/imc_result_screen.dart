import 'package:flutter/material.dart';
import 'package:imc_dos/core/app_colors.dart';
import 'package:imc_dos/core/buttos_style.dart';
import 'package:imc_dos/core/decoration_style.dart';
import 'package:imc_dos/core/text_styles.dart';

class ImcResultScreen extends StatelessWidget {
  final double height;
  final int age;
  final String selectedGender;

  const ImcResultScreen({
    super.key,
    required this.height,
    required this.age,
    required this.selectedGender,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: toolBarResult(),
      body: bodyResult(),
    );
  }

  Padding bodyResult() {
    return Padding(
      padding: const EdgeInsets.all(16),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tu resultado: ".toUpperCase(),
            style: TextStyles.bodyTextResult,
          ),
          //Text(height.toString(), style: TextStyles.bodyTextResult),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 30),
              child: Container(
                width: double.infinity,
                decoration: BoxDecorations.boxDecorationCard,
                child: Text("VAc"),
              ),
            ),
          ),
          SizedBox(
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyles.primaryButton,
              child: Text("Finalizar", style: TextStyles.bodyText),
            ),
          ),
        ],
      ),
    );
  }

  AppBar toolBarResult() {
    return AppBar(
      title: Text("Resultado"),
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
    );
  }
}
