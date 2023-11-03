import 'package:figma_practice/Presentation/Commons/appbar.dart';
import 'package:figma_practice/Presentation/Commons/elevatedbutton.dart';
import 'package:figma_practice/Presentation/Commons/linearindicator.dart';
import 'package:figma_practice/Presentation/Commons/sizebox.dart';
import 'package:figma_practice/Presentation/Commons/text.dart';
import 'package:figma_practice/Presentation/Commons/textformfeild.dart';
import 'package:figma_practice/Presentation/Screens/Signup/signup2.dart';
import 'package:figma_practice/Presentation/Screens/Signup/signup4.dart';
import 'package:figma_practice/Presentation/Utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp3 extends StatefulWidget {
  const SignUp3({super.key});

  @override
  State<SignUp3> createState() => _SignUp3State();
}

class _SignUp3State extends State<SignUp3> {
  bool checkbox = false;
  bool obscure = true;
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
                      builder: (context) => SignUp2(),
                    ),
                  );
                },
              ),
              CustomSizeBox(),
              CustomText(
                  text: ' Create a Password',
                  fontsize: 28.sp,
                  TextColor: AppColors.darkText),
              CustomSizeBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormFeild(
                    text: 'Password',
                    border: InputBorder.none,
                    obscureText: obscure),
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: AppColors.button,
                    value: checkbox,
                    onChanged: (value) {
                      setState(
                        () {
                          obscure = !obscure;
                          checkbox = !checkbox;
                        },
                      );
                    },
                  ),
                  CustomText(text: 'Show Password', fontsize: 15.sp),
                ],
              ),
              CustomSizeBox(
                height: 200.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 300.w),
                child: CustomText(
                    text: '2 of 3',
                    TextColor: AppColors.darkText,
                    fontsize: 12.sp),
              ),
              CustomSizeBox(
                height: 10.h,
              ),
              CustomLinearIndicator(value: 0.6),
              CustomSizeBox(
                height: 80.h,
              ),
              CustomButton(
                text: 'SignUp',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp4(),
                    ),
                  );
                },
              ),
              CustomSizeBox(),
              Center(
                child: CustomText(
                  text: 'By signing up, you agree to our',
                  textspan: ' Terms of Service',
                  text1: ' and ',
                  textspan1: 'Privacy \n Policy',
                  TextColor: AppColors.darkText,
                  fontsize: 10.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
