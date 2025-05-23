import 'package:flutter/material.dart';
import 'package:imc_dos/components/gender_selector.dart';
import 'package:imc_dos/core/app_colors.dart';
import 'package:imc_dos/core/text_styles.dart';

class HeightSelector extends StatefulWidget {
  final double selectedHeight;
  final Function(double) onHeightChanged;

  const HeightSelector({
    super.key,
    required this.selectedHeight,
    required this.onHeightChanged,
  });

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  //double height = 170; //Altura inicial

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 16),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundComponent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            //
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text("Altura".toUpperCase(), style: TextStyles.bodyText),
            ),
            Text(
              "${widget.selectedHeight.toStringAsFixed(1)} cm".toUpperCase(),
              //style: TextStyles.bodyText,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            Slider(
              value: widget.selectedHeight,
              onChanged: (newHeight) {
                widget.onHeightChanged(newHeight);
                //
              },
              min: 150,
              max: 220,
              divisions: 140,
              //label: (HeightSelector),
              label: "${widget.selectedHeight.toStringAsFixed(1)} cm",
              activeColor: AppColors.primary,
            ),
          ],
        ),
      ),
    );
  }
}
