import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';
import 'app_strings.dart';

class AppStyles {
  static TextStyle headline16 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
    fontFamily: AppStrings.poppins,
  );
  static TextStyle textButton14 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.dimGray,
    fontFamily: AppStrings.poppins,
  );
  static TextStyle buttonText = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.primary,
    fontFamily: AppStrings.poppins,
  );
  static TextStyle headline20 = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
    fontFamily: AppStrings.poppins,
  );
  static TextStyle textBody14Light = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w300,
    color: AppColors.black,
    fontFamily: AppStrings.poppins,
  );
  static TextStyle textBody14Regular = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.dimGray,
    fontFamily: AppStrings.poppins,
  );
  static TextStyle textBody14SemiBold = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
    fontFamily: AppStrings.poppins,
  );
  static TextStyle textBody12Regular = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
    fontFamily: AppStrings.poppins,
  );  static TextStyle textBody12Regular500 = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.davyGrey,
    fontFamily: AppStrings.poppins,
  );
  static TextStyle textBody10 = const TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: AppColors.davyGrey,
    fontFamily: AppStrings.poppins,
  );
}
