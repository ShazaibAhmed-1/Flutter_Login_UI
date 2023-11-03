import 'package:figma_practice/Presentation/Utils/appcolors.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText(
      {super.key,
      required this.text,
      this.text1,
      this.fontsize = 20,
      this.TextColor = AppColors.darkText,
      this.textspan,
      this.textspan1});
  String text;
  String? textspan;
  String? text1;
  String? textspan1;
  double? fontsize;
  Color? TextColor;
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          style: TextStyle(
            color: TextColor,
            fontSize: fontsize,
            fontFamily: 'AppFont',
            fontWeight: FontWeight.w700,
          ),
          children: [
            TextSpan(
              text: text,
            ),
            TextSpan(
                text: textspan,
                style: TextStyle(
                    fontWeight: FontWeight.w700, fontStyle: FontStyle.italic)),
            TextSpan(
              text: text1,
            ),
            TextSpan(
                text: textspan1,
                style: TextStyle(
                    fontWeight: FontWeight.w700, fontStyle: FontStyle.italic)),
          ]),
    );
  }
}
