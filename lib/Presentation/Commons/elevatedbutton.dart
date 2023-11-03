import 'package:figma_practice/Presentation/Utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key,required this.text, required this.onPressed});
  String text;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return   ElevatedButton(
        onPressed:onPressed,
        child: Text(
          text,
          style: TextStyle(
              fontFamily: 'AppFont',
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
              color: AppColors.white),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.button,
            fixedSize: Size(340.w, 50.h),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.r),

            ),
        ),
        );
    }
}