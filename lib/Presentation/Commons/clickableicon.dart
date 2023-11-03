import 'package:figma_practice/Presentation/Commons/circleavatar.dart';
import 'package:figma_practice/Presentation/Commons/sizebox.dart';
import 'package:figma_practice/Presentation/Utils/appimages.dart';
import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomCircleAvatar(
            Link: 'https://www.apple.com/', Images: AppImages.image1),
        CustomSizeBox(),
        CustomCircleAvatar(
            Link: 'https://www.google.com/', Images: AppImages.image2),
        CustomSizeBox(),
        CustomCircleAvatar(
            Link: 'https://www.facebook.com/',
            Images: AppImages.image3),
      ],
    );
  }
}
