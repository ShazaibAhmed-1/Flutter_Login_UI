import 'package:figma_practice/Presentation/Utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLinearIndicator extends StatelessWidget {
  CustomLinearIndicator({super.key,required this.value});
  double? value;
  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      backgroundColor: AppColors.lightText,
      color: AppColors.button,
      borderRadius: BorderRadius.circular(5.r),
      minHeight: 10.h,
      value: value, // Set the value to 1/3 or 0.33
    );
  }
}
