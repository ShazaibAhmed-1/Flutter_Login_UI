import 'package:figma_practice/Presentation/Utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormFeild extends StatelessWidget {
  CustomTextFormFeild(
      {super.key, required this.text, this.border, this.obscureText = false});
  String text;
  InputBorder? border;
  bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.button,
      obscureText: obscureText,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        hintText: text,
        border: border,
        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColors.button),),
        hintStyle: TextStyle(
          color: AppColors.lightText,
          fontSize: 20.sp,
          fontFamily: 'AppFont',
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
