import 'package:flutter/material.dart';
import 'package:imc_dos/core/app_colors.dart';
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
      backgroundColor: AppColors.accent,
      body: Padding(
        padding: const EdgeInsets.all(108),
        child: Container(
          child: Column(
            children: [
              Spacer(),
              Text(age.toString(), style: TextStyles.bodyText),
              Text(height.toString(), style: TextStyles.bodyText),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
