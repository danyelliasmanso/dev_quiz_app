import 'package:dev_quiz/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color fontColor;
  final Color borderColor;
  final Color overlayColor;
  final VoidCallback onTap;

  const NextButtonWidget(
      {Key? key,
      required this.label,
      required this.backgroundColor,
      required this.fontColor,
      required this.borderColor,
      required this.overlayColor,
      required this.onTap});

  NextButtonWidget.green({
    required String label,
    required VoidCallback onTap,
  })   : this.backgroundColor = AppColors.darkGreen,
        this.fontColor = AppColors.white,
        this.borderColor = AppColors.green,
        this.overlayColor = Colors.greenAccent.shade700,
        this.onTap = onTap,
        this.label = label;

  NextButtonWidget.purple({
    required String label,
    required VoidCallback onTap,
  })   : this.backgroundColor = AppColors.purple,
        this.fontColor = AppColors.white,
        this.borderColor = AppColors.purple,
        this.overlayColor = Colors.purpleAccent.shade700,
        this.onTap = onTap,
        this.label = label;

  NextButtonWidget.white({required String label, required VoidCallback onTap})
      : this.backgroundColor = AppColors.white,
        this.fontColor = AppColors.grey,
        this.borderColor = AppColors.border,
        this.overlayColor = Colors.black12,
        this.onTap = onTap,
        this.label = label;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 48,
        child: TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(backgroundColor),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
                side: MaterialStateProperty.all(
                    BorderSide(color: AppColors.border)),
                overlayColor: MaterialStateProperty.all(overlayColor)),
            onPressed: onTap,
            child: Text(
              label,
              style: GoogleFonts.notoSans(
                  fontWeight: FontWeight.w600, fontSize: 15, color: fontColor),
            )));
  }
}
