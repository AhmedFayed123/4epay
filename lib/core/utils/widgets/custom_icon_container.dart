import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/app_colors.dart';
import '../../constant/app_icons.dart';

class CustomIconContainer extends StatelessWidget {
  const CustomIconContainer({super.key,this.color = AppColors.blueHill, required this.icon});

  final Color color;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.w,
      height: 40.h,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(1000.r),
      ),
      child: Center(
        child: Icon(
          icon,
          color: AppColors.primary,
          size: 26,
        ),
      ),
    );
  }
}
