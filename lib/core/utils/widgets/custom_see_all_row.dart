import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:for_epay/core/constant/app_strings.dart';
import 'package:for_epay/core/constant/app_styles.dart';

class CustomSeeAllRow extends StatelessWidget {
  const CustomSeeAllRow({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppStyles.textBody14SemiBold,
          ),
          Text(
            AppStrings.seeAll,
            style: AppStyles.textBody12Regular500,
          ),
        ],
      ),
    );
  }
}
