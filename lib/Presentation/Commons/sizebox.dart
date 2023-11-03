import 'package:flutter/material.dart';

class CustomSizeBox extends StatelessWidget {
   CustomSizeBox({super.key, this.height=20, this.width=10});
   double? height;
   double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
