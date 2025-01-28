import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:for_epay/core/router/app_router.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constant/app_strings.dart';
import '../../../../../core/constant/app_styles.dart';
import '../../../../../core/router/routes.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../generated/assets.dart';

class VerifyYourIdViewBody extends StatelessWidget {
  const VerifyYourIdViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.letsVerifyYourID,
            style: AppStyles.headline20,
          ),
          Text(
            AppStrings.proofOfResidencyDesc,
            style: AppStyles.textBody12Regular.copyWith(
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 32.h,),
          Center(child: SvgPicture.asset(Assets.imagesIdCardPassportBadge)),
          SizedBox(height: 64.h,),
          CustomButton(title: AppStrings.continue_, onPressed: (){context.go(Routes.idSuccessView);}),
        ],
      ),
    );
  }
}
