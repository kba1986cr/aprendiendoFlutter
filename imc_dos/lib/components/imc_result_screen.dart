import 'package:flutter/material.dart';
import 'package:imc_dos/core/app_colors.dart';
import 'package:imc_dos/core/buttos_style.dart';
import 'package:imc_dos/core/decoration_style.dart';
import 'package:imc_dos/core/text_styles.dart';

class ImcResultScreen extends StatelessWidget {
  final double height;
  final int weight;
  final String selectedGender;

  const ImcResultScreen({
    super.key,
    required this.height,
    required this.weight,
    required this.selectedGender,
  });

  @override
  Widget build(BuildContext context) {
    ;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: toolBarResult(),
      body: bodyResult(context),
    );
  }

  Padding bodyResult(BuildContext context) {
    double fixedHeightt = height / 100;
    double imcResult = weight / (fixedHeightt * fixedHeightt);

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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      getTitleByImc(imcResult),
                      //"".toUpperCase(),
                      style: TextStyle(
                        color: getColorByImc(imcResult),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                      //style: TextStyles.bodyTextResult,
                    ),
                    Text(
                      imcResult.toStringAsFixed(2),
                      //style: TextStyles.bodyTextResult,
                      style: TextStyle(
                        color: getColorByImc(imcResult),
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        getDescriptionByImc(imcResult),
                        //"Descripción".toUpperCase(),
                        //style: TextStyles.bodyText,
                        style: TextStyle(
                          color: getColorByImc(imcResult),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
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

  getColorByImc(double imcResult) {
    return switch (imcResult) {
      < 18.5 => Colors.blue, // IMC Bajo
      < 24.9 => Colors.green, // IMC Normal
      < 39.99 => Colors.orange, // Sobrepeso
      _ => Colors.red, // Obesidad
    };
  }

  getTitleByImc(double imcResult) {
    return switch (imcResult) {
      < 18.5 => "IMC Bajo".toUpperCase(), // IMC Bajo
      < 24.9 => "IMC Normal".toUpperCase(), // IMC Normal
      < 39.99 => "IMC Sobrepeso".toUpperCase(), // Sobrepeso
      _ => "IMC Obesidad".toUpperCase(), // Obesidad
    };
  }

  getDescriptionByImc(double imcResult) {
    return switch (imcResult) {
      < 18.5 =>
        "Vales madres come mas, full ejercisio y agua"
            .toUpperCase(), // IMC Bajo
      < 24.9 =>
        "Amigo estas al limite ejrecicio y agua seria bueno"
            .toUpperCase(), // IMC Normal
      < 39.99 =>
        "Note pases cierra la boca, as ejercicio y toma mucha agua. Nota: Correr es muy bueno"
            .toUpperCase(), // Sobrepeso
      _ =>
        "Rata te pasaste de verga ve a nutrición, mas ejercicio de veras aslo, mejora la ingesta de agua y camina por amor a Dios es gratis"
            .toUpperCase(), // Obesidad
    };
  }
}
