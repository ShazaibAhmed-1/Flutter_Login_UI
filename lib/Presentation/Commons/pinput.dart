import 'package:figma_practice/Presentation/Utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class PinPut extends StatelessWidget {
  const PinPut({super.key});

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 4,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      defaultPinTheme: PinTheme(
        width: 56.w,
        height: 56.h,
        textStyle: TextStyle(
          fontSize: 22.sp,
          color: AppColors.darkText,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: AppColors.lightText),
        ),
      ),
      focusedPinTheme: PinTheme(
        width: 56.w,
        height: 56.h,
        textStyle: TextStyle(
          fontSize: 22.sp,
          color: AppColors.darkText,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: AppColors.button),
        ),
      ),
      submittedPinTheme: PinTheme(
        width: 56.w,
        height: 56.h,
        textStyle: TextStyle(
          fontSize: 22.sp,
          color: AppColors.white,
        ),
        decoration: BoxDecoration(
          color: AppColors.button,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: AppColors.button),
        ),
      ),
    );
  }
}
