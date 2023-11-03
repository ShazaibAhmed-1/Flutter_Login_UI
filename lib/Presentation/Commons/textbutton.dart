import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  CustomTextButton({super.key,required this.text, required this.onPressed,required this.color});
  String text;
  Function()? onPressed;
  Color color;
  @override
  Widget build(BuildContext context) {
    return  TextButton(
      onPressed:onPressed,
      child: Text(
        text,
        style: TextStyle(
            fontFamily: 'AppFont',
            fontWeight: FontWeight.w600,
            fontSize: 12.sp,
            color: color),
      ),
    );
  }
}