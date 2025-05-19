import 'package:flutter/material.dart';
import 'package:imc_dos/core/app_colors.dart';
import 'package:imc_dos/core/text_styles.dart';

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
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              top: 16,
              right: 16,
              bottom: 8,
            ),
            child: Container(
              decoration: BoxDecoration(
                color:
                    selectedGender == "Hombre"
                        ? AppColors.backgroundComponetSelected
                        : AppColors.backgroundComponent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    //
                    Image.asset("assets/images/m.png", height: 100),
                    SizedBox(height: 10),
                    Text("Hombre".toUpperCase(), style: TextStyles.bodyText),
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              top: 16,
              right: 16,
              bottom: 8,
            ),
            child: Container(
              decoration: BoxDecoration(
                color:
                    selectedGender == "Mujer"
                        ? AppColors.backgroundComponetSelected
                        : AppColors.backgroundComponent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    //
                    Image.asset("assets/images/f.png", height: 100),
                    SizedBox(height: 10),
                    Text("Mujer".toUpperCase(), style: TextStyles.bodyText),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
