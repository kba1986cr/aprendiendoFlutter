import 'package:flutter/material.dart';
import 'package:imc_dos/core/app_colors.dart';

class ButtonStyles {
  static final ButtonStyle primaryButton = ButtonStyle(
    shape: WidgetStatePropertyAll(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    backgroundColor: WidgetStatePropertyAll(AppColors.primary),
  );
}


/*
static final ButtonStyle secondaryButton = ButtonStyle(
  shape: MaterialStatePropertyAll(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
      side: BorderSide(color: AppColors.primary),
    ),
  ),
  backgroundColor: MaterialStatePropertyAll(Colors.transparent),
  foregroundColor: MaterialStatePropertyAll(AppColors.primary),
);
*/