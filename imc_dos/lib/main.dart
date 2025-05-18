import 'package:flutter/material.dart';
import 'package:imc_dos/core/app_colors.dart';
import 'package:imc_dos/screens/imc_home_screec.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.amber,
          title: Text("IMC CALCULATOR"),
        ),
        backgroundColor: AppColors.background,
        body: ImcHomeScreen(),
      ),
    );
  }
}
