import 'package:figma_practice/Presentation/Commons/clickableicon.dart';
import 'package:figma_practice/Presentation/Commons/divider.dart';
import 'package:figma_practice/Presentation/Commons/elevatedbutton.dart';
import 'package:figma_practice/Presentation/Commons/sizebox.dart';
import 'package:figma_practice/Presentation/Commons/text.dart';
import 'package:figma_practice/Presentation/Commons/textbutton.dart';
import 'package:figma_practice/Presentation/Commons/textformfeild.dart';
import 'package:figma_practice/Presentation/Screens/Signup/signup1.dart';
import 'package:figma_practice/Presentation/Utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CustomText(
                  text: 'Login',
                  TextColor: AppColors.darkText,
                  fontsize: 28.sp,
                ),
              ),
              CustomSizeBox(
                height: 10.h,
              ),
              Center(
                child: CustomText(
                  text: 'Hi! Welcome',
                  fontsize: 22.sp,
                  TextColor: AppColors.lightText,
                ),
              ),
              CustomSizeBox(
                height: 80.h,
              ),
              CustomText(
                text: 'Email Address',
                TextColor: AppColors.darkText,
                fontsize: 12.sp,
              ),
              CustomSizeBox(
                height: 10.h,
              ),
              CustomTextFormFeild(text: 'Enter Your Email'),
              CustomSizeBox(),
              CustomText(
                  text: 'Password',
                  TextColor: AppColors.darkText,
                  fontsize: 12.sp),
              CustomSizeBox(height: 10.h),
              CustomTextFormFeild(text: 'Enter Your Password'),
              CustomSizeBox(height: 30.h),
              Center(child: CustomButton(text: 'Login', onPressed: () {})),
              CustomSizeBox(),
              Center(
                child: CustomTextButton(
                  text: 'Forgotten Your Password?',
                  color: AppColors.darkText,
                  onPressed: () {},
                ),
              ),
              CustomSizeBox(),
              CustomDivider(),
              CustomSizeBox(height: 50.h),
              CustomLogo(),
              CustomSizeBox(),
              Center(
                child: CustomText(
                  text: 'Don’t have an account ?',
                  fontsize: 12.sp,
                  TextColor: AppColors.lightText,
                ),
              ),
              Center(
                child: CustomTextButton(
                  text: 'Create an Account',
                  color: AppColors.button,
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp1(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
