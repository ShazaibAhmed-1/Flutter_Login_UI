import 'package:figma_practice/Presentation/Utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CustomCircleAvatar extends StatelessWidget {
  CustomCircleAvatar({super.key,required this.Link,required this.Images});
  String Link;
  String Images;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _launchGoogleLink();
      },
      child: CircleAvatar(
        backgroundColor: AppColors.lightText,
        radius: 40.r,
        child: CircleAvatar(
          backgroundColor: AppColors.white,
          radius: 39.r,
          child: Image(image: AssetImage(Images)),
        ),
      ),

    );
  }
  _launchGoogleLink() async {
    var url = Link; // Replace with your Google link
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
