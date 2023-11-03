import 'package:figma_practice/Presentation/Commons/sizebox.dart';
import 'package:figma_practice/Presentation/Commons/text.dart';
import 'package:figma_practice/Presentation/Utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: Divider(thickness: 1, color: Colors.black)),
        CustomSizeBox(),
        CustomText(
            text: 'Or Sign in with ',
            TextColor: AppColors.lightText,
            fontsize: 12.sp),
        CustomSizeBox(),
        Expanded(
          child: Divider(
            thickness: 1,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
