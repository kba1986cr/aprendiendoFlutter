import 'package:flutter/material.dart';
import 'package:imc_dos/components/gender_selector.dart';
import 'package:imc_dos/core/app_colors.dart';
import 'package:imc_dos/core/text_styles.dart';

class HeightSelector extends StatefulWidget {
  const HeightSelector({super.key});

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  double height = 170; //Altura inicial

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //
        Text("Altura".toUpperCase(), style: TextStyles.bodyText),
        Text("$height cm".toUpperCase(), style: TextStyles.bodyText),
        Slider(
          value: height,
          onChanged: (newHeight) {
            setState(() {
              height = newHeight;
            });
          },
          min: 150,
          max: 220,
          divisions: 140,
          label: "$height",
          activeColor: AppColors.primary,
        ),
      ],
    );
  }
}
