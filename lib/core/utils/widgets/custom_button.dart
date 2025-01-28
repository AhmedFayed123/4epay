
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/app_colors.dart';
import '../../constant/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.isLoading = false,
    this.buttonColor = AppColors.blueHill,
    this.borderRadius = 10.0,
    this.padding = const EdgeInsets.symmetric(vertical: 14.0, horizontal: 20.0),
  });

  final String title;
  final VoidCallback onPressed;
  final bool isLoading;
  final Color buttonColor;
  final double borderRadius;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading ? null : onPressed,
      child: Container(
        width: 343.w,
        height: 48.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius.r),
          color: buttonColor,
        ),
        child: Center(
          child: isLoading
              ? Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 20.0.w,
                height: 20.0.h,
                child: const CircularProgressIndicator(
                  color: AppColors.primary,
                  strokeWidth: 2.0,
                ),
              ),
              SizedBox(width: 10.w),
            ],
          )
              : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: AppStyles.buttonText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}