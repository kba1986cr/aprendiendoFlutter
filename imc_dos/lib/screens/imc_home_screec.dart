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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //
        GenderSelector(),
        HeightSelector(),
        NumberSelector(),
      ],
    );
  }
}
