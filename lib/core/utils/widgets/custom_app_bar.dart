import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/app_colors.dart';
import '../../constant/app_icons.dart';
import '../../constant/app_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.onPressed,
    this.icon = AppIcons.arrowBack,
  });

  final String title;
  final VoidCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.0.w, vertical: 24.h),
      child: Container(
        width: 30.w,
        height: 30.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(500.r),
          color: AppColors.blueHill,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Center(
              child: Text(
                title,
                style: AppStyles.headline20,
              ),
            ),
            GestureDetector(
              onTap: onPressed,
              child: Icon(
                icon,
                color: AppColors.primary,
                size: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
