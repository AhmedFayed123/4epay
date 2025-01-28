import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:for_epay/core/constant/app_strings.dart';
import 'package:for_epay/core/utils/widgets/custom_button.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/router/routes.dart';
import '../../../../../core/utils/widgets/custom_text_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 8.h,
        ),
        CustomTextField(
          title: AppStrings.phoneNumber,
          controller: TextEditingController(),
          hint: AppStrings.enterPhoneNumber,
        ),
        SizedBox(
          height: 16.h,
        ),
        CustomTextField(
          title: AppStrings.password,
          controller: TextEditingController(),
          hint: AppStrings.enterPassword,
        ),
        SizedBox(
          height: 36.h,
        ),
        CustomButton(
          title: AppStrings.login,
          onPressed: () {
            context.go(Routes.proofOfResidencyView);
          },
        ),
      ],
    );
  }
}
