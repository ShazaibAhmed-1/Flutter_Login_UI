import 'package:figma_practice/Presentation/Commons/text.dart';
import 'package:figma_practice/Presentation/Utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppbar extends StatelessWidget {
  final Function()? onTap;

  CustomAppbar({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      elevation: 0,
      title: CustomText(text: 'Sign Up', fontsize: 15.sp, TextColor: AppColors.darkText),
      centerTitle: true,
      leading: InkWell(
        onTap: onTap,
        child: Icon(
          Icons.arrow_back_ios,
          color: AppColors.black,
        ),
      ),
    );
  }
}
