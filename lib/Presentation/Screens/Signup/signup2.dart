import 'package:figma_practice/Presentation/Commons/appbar.dart';
import 'package:figma_practice/Presentation/Commons/elevatedbutton.dart';
import 'package:figma_practice/Presentation/Commons/linearindicator.dart';
import 'package:figma_practice/Presentation/Commons/sizebox.dart';
import 'package:figma_practice/Presentation/Commons/text.dart';
import 'package:figma_practice/Presentation/Commons/textformfeild.dart';
import 'package:figma_practice/Presentation/Screens/Signup/signup1.dart';
import 'package:figma_practice/Presentation/Screens/Signup/signup3.dart';
import 'package:figma_practice/Presentation/Utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp2 extends StatefulWidget {
  const SignUp2({super.key});

  @override
  State<SignUp2> createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppbar(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp1(),
                    ),
                  );
                },
              ),
              CustomSizeBox(),
              CustomText(
                  text: ' What’s your email?',
                  fontsize: 28.sp,
                  TextColor: AppColors.darkText),
              CustomSizeBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormFeild(
                    text: 'Email Address', border: InputBorder.none),
              ),
              CustomSizeBox(
                height: 200.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 300.w),
                child: CustomText(
                    text: '1 of 3',
                    TextColor: AppColors.darkText,
                    fontsize: 12),
              ),
              CustomSizeBox(
                height: 10.h,
              ),
              CustomLinearIndicator(value: 0.3),
              CustomSizeBox(
                height: 80.h,
              ),
              CustomButton(
                text: 'Next',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp3(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
