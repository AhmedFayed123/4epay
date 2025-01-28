import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:for_epay/core/router/app_router.dart';
import 'package:for_epay/core/router/routes.dart';
import 'package:for_epay/core/utils/widgets/custom_button.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constant/app_strings.dart';
import '../../../../../core/constant/app_styles.dart';
import '../../../../../generated/assets.dart';

class IdSuccessViewBody extends StatelessWidget {
  const IdSuccessViewBody({super.key});

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
              AppStrings.hasBeenConfirmed,
              style: AppStyles.textBody14Light,
            ),
            SizedBox(
              height: 24.h,
            ),
            CustomButton(title: AppStrings.backToHome, onPressed: (){context.go(Routes.home);}),
          ],
        ),
      ),
    );
  }
}
