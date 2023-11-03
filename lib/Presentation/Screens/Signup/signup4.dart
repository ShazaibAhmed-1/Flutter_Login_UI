import 'package:figma_practice/Presentation/Commons/appbar.dart';
import 'package:figma_practice/Presentation/Commons/elevatedbutton.dart';
import 'package:figma_practice/Presentation/Commons/linearindicator.dart';
import 'package:figma_practice/Presentation/Commons/pinput.dart';
import 'package:figma_practice/Presentation/Commons/sizebox.dart';
import 'package:figma_practice/Presentation/Commons/text.dart';
import 'package:figma_practice/Presentation/Commons/textbutton.dart';
import 'package:figma_practice/Presentation/Screens/Signup/signup3.dart';
import 'package:figma_practice/Presentation/Utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp4 extends StatefulWidget {
  const SignUp4({super.key});

  @override
  State<SignUp4> createState() => _SignUp4State();
}

class _SignUp4State extends State<SignUp4> {
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
                      builder: (context) => SignUp3(),
                    ),
                  );
                },
              ),
              CustomSizeBox(),
              Center(
                child: CustomText(
                    text: 'Verify OTP',
                    fontsize: 28.sp,
                    TextColor: AppColors.darkText),
              ),
              CustomSizeBox(
                height: 10.h,
              ),
              Center(
                child: CustomText(
                    text: 'Please enter the code we sent you to email.',
                    fontsize: 12.sp,
                    TextColor: AppColors.lightText),
              ),
              CustomSizeBox(
                height: 35.h,
              ),
              Center(child: PinPut()),
              CustomSizeBox(
                height: 50.h,
              ),
              Center(
                child: CustomText(
                    text: "Don't Receive OTP ?",
                    fontsize: 12.sp,
                    TextColor: AppColors.lightText),
              ),
              Center(
                  child: CustomTextButton(
                      text: 'Resend Code',
                      onPressed: () {},
                      color: AppColors.button)),
              CustomSizeBox(
                height: 100.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 300.w),
                child: CustomText(
                    text: '3 of 3',
                    TextColor: AppColors.darkText,
                    fontsize: 12.sp),
              ),
              CustomSizeBox(
                height: 10.h,
              ),
              CustomLinearIndicator(value: 1),
              CustomSizeBox(),
              Center(
                child: CustomButton(
                  text: 'Verify',
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
