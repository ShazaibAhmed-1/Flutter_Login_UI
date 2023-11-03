import 'package:figma_practice/Presentation/Utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormFeild1 extends StatelessWidget {
  CustomTextFormFeild1({
    super.key,
    required this.text,
    required this.LabelText,
    this.suffixIcon,

  });
  String LabelText;
  String text;
  Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.r),
          borderSide: BorderSide(
            color: AppColors.button,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.r),
          borderSide: BorderSide(
            color: AppColors.lightText,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.r),
        ),
        hintText: text,
        labelText: LabelText,
        enabled: true,
        labelStyle: TextStyle(
          color: AppColors.darkText,
          fontSize: 12.sp,
          fontFamily: 'AppFont',
          fontWeight: FontWeight.w600,
        ),
        hintStyle: TextStyle(
          color: AppColors.lightText,
          fontSize: 15.sp,
          fontFamily: 'AppFont',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
