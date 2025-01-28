import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:for_epay/core/constant/app_strings.dart';
import 'package:for_epay/core/constant/app_styles.dart';
import 'package:for_epay/core/utils/widgets/custom_button.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/router/routes.dart';
import '../../../../../generated/assets.dart';
import 'custom_proof_button.dart';

class ProofOfResidencyViewBody extends StatelessWidget {
  const ProofOfResidencyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.proofOfResidency,
            style: AppStyles.headline20,
          ),
          Text(
            AppStrings.proofOfResidencyDesc,
            style: AppStyles.textBody12Regular.copyWith(
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Text(
            AppStrings.proofOfResidency,
            style: AppStyles.textBody14Light.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomProofButton(
            onPressed: () {},
            icon: Assets.imagesRiCheckboxCircleFill,
            title: AppStrings.nationalIdentityCard,
          ),
          SizedBox(height: 16.h,),
          CustomProofButton(
            onPressed: () {},
            icon: Assets.imagesMdiCheckboxMultipleBlankCircleOutline,
            title: AppStrings.passport,
          ),
          SizedBox(height: 16.h,),
          CustomButton(title: AppStrings.continue_, onPressed: () {
            context.go(Routes.verifyYourIdView);
          }),
        ],
      ),
    );
  }
}
