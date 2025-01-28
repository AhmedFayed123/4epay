import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:for_epay/core/constant/app_colors.dart';
import 'package:for_epay/core/constant/app_styles.dart';

class CustomProofButton extends StatelessWidget {
  const CustomProofButton(
      {super.key,
      required this.onPressed,
      required this.icon,
      required this.title});

  final VoidCallback onPressed;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 343.w,
        height: 46.h,
        padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 16.w),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            width: .5,
            color: AppColors.appleGreen,
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              width: 24.w,
              height: 24.h,
            ),
            SizedBox(
              width: 8.w,
            ),
            Text(
              title,
              style: AppStyles.textBody14Regular,
            )
          ],
        ),
      ),
    );
  }
}
