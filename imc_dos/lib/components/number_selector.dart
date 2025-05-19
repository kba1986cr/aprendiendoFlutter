import 'package:flutter/material.dart';
import 'package:imc_dos/core/app_colors.dart';
import 'package:imc_dos/core/text_styles.dart';

class NumberSelector extends StatefulWidget {
  final String? title;

  const NumberSelector({super.key, required this.title});

  @override
  State<NumberSelector> createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.backgroundComponent,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("${widget.title}", style: TextStyles.bodyText),
                Text(""),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FloatingActionButton(
                      onPressed: () {},
                      shape: CircleBorder(),
                      backgroundColor: AppColors.primary,
                      child: Icon(Icons.remove, color: Colors.white),
                    ),
                    //SizedBox(width: 8),
                    FloatingActionButton(
                      onPressed: () {},
                      shape: CircleBorder(),
                      backgroundColor: AppColors.primary,
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
