import 'package:figma_practice/Presentation/Commons/clickableicon.dart';
import 'package:figma_practice/Presentation/Commons/divider.dart';
import 'package:figma_practice/Presentation/Commons/elevatedbutton.dart';
import 'package:figma_practice/Presentation/Commons/sizebox.dart';
import 'package:figma_practice/Presentation/Commons/text.dart';
import 'package:figma_practice/Presentation/Commons/textformfeild1.dart';
import 'package:figma_practice/Presentation/Screens/Login/login.dart';
import 'package:figma_practice/Presentation/Screens/Signup/signup2.dart';
import 'package:figma_practice/Presentation/Utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp1 extends StatefulWidget {
  const SignUp1({super.key});

  @override
  State<SignUp1> createState() => _SignUp1State();
}

class _SignUp1State extends State<SignUp1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Screen1(),
              ),
            );
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: AppColors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              Center(
                child: CustomText(
                  text: 'Create Account',
                  fontsize: 30.sp,
                  TextColor: AppColors.darkText,
                ),
              ),
              CustomSizeBox(height: 10.h),
              Center(
                child: CustomText(
                  text:
                      'Fill your information below or register\n with your social account',
                  fontsize: 14.sp,
                  TextColor: AppColors.lightText,
                ),
              ),
              CustomSizeBox(height: 30.h),
              CustomTextFormFeild1(
                text: 'Your Name',
                LabelText: 'Name',
              ),
              CustomSizeBox(height: 30.h),
              CustomTextFormFeild1(
                text: 'MM/DD/YYYY',
                LabelText: 'Birthday',
                suffixIcon: InkWell(
                    onTap: () {
                      showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1985),
                          lastDate: DateTime(2030));
                    },
                    child: Icon(Icons.calendar_month_outlined)),
              ),
              CustomSizeBox(height: 30.h),
              CustomTextFormFeild1(
                text: 'Enter Your Location',
                LabelText: 'Address',
              ),
              CustomSizeBox(height: 30.h),
              CustomTextFormFeild1(
                text: '+1',
                LabelText: 'Phone No.',
              ),
              CustomSizeBox(height: 30.h),
              CustomButton(
                text: 'Next',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp2(),
                    ),
                  );
                },
              ),
              CustomSizeBox(height: 50.h),
              CustomDivider(),
              CustomSizeBox(height: 30.h),
              CustomLogo(),
            ],
          ),
        ),
      ),
    );
  }
}
