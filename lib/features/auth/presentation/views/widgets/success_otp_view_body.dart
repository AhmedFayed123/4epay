import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:for_epay/core/constant/app_strings.dart';
import 'package:for_epay/core/constant/app_styles.dart';

import '../../../../../generated/assets.dart';

class SuccessOtpViewBody extends StatelessWidget {
  const SuccessOtpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 600.h,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.imagesGroup7,
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              AppStrings.successfuly,
              style: AppStyles.headline20,
            ),
            Text(
              AppStrings.nowYouCanLoginToYourAccount,
              style: AppStyles.textBody14Light,
            )
          ],
        ),
      ),
    );
  }
}
