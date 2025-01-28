import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:for_epay/core/constant/app_strings.dart';
import 'package:for_epay/core/constant/app_styles.dart';
import 'package:for_epay/core/router/app_router.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/router/routes.dart';

class VerificationCodeViewBody extends StatelessWidget {
  const VerificationCodeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 38.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.enterVerificationCode,
            style: AppStyles.headline20,
          ),
          Text(
            AppStrings.weSentYouVerificationCode,
            style: AppStyles.textBody14Light,
          ),
          SizedBox(
            height: 80.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.5.w),
            child: PinCodeTextField(
              length: 4,
              obscureText: false,
              animationType: AnimationType.fade,
              keyboardType: TextInputType.number,
              onChanged: (String value) {},
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.underline,
                borderRadius: BorderRadius.circular(10.r),
                fieldHeight: 48.h,
                fieldWidth: 39.5.w,
                activeFillColor: AppColors.lightGray,
                inactiveFillColor: Colors.transparent,
                selectedFillColor: Colors.transparent,
                borderWidth: 2,
                activeColor: AppColors.lightGray,
                inactiveColor: AppColors.lightGray,
                selectedColor: AppColors.lightGray,
              ),
              appContext: context,
            ),
          ),
          SizedBox(
            height: 177.5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                AppStrings.didNotReceiveIt,
                style: AppStyles.textBody12Regular,
              ),
              SizedBox(width: 5.w,),
              GestureDetector(
                onTap: (){
                  context.go(Routes.successView);
                },
                child: Text(
                  AppStrings.resendAgain,
                  style: AppStyles.textBody14Light.copyWith(
                    color: AppColors.appleGreen,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColors.appleGreen,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
