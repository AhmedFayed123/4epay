import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:for_epay/core/constant/app_styles.dart';

import '../../../../../core/constant/app_strings.dart';
import '../../../../../generated/assets.dart';

class SendMoneyListItem extends StatelessWidget {
  const SendMoneyListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: SizedBox(
        width: 41.89.w,
        height: 59.06.h,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(96.82.r),
              child: Image.asset(
                Assets.imagesImage9,
                cacheWidth: 56,
                cacheHeight: 56,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 4.84.h,),
            Text(
              AppStrings.ahmed,
              style: AppStyles.textBody10,
            ),
          ],
        ),
      ),
    );  }
}
