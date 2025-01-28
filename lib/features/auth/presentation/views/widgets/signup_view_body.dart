import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:for_epay/core/router/routes.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constant/app_strings.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../core/utils/widgets/custom_text_field.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 8.h,
        ),
        Row(
          children: [
            CustomTextField(
              title: AppStrings.firstName,
              controller: TextEditingController(),
              hint: AppStrings.enterName,
              width: 163,
            ),
            SizedBox(
              width: 17.w,
            ),
            CustomTextField(
              title: AppStrings.lastName,
              controller: TextEditingController(),
              hint: AppStrings.enterName,
              width: 163,
            ),
          ],
        ),
        SizedBox(
          height: 16.h,
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
          title: AppStrings.nationality,
          controller: TextEditingController(),
          hint: 'Martial State',
          isDropdown: true,
          items: const ['Single', 'Married'],
          onChanged: (selectedValue) {
            print(selectedValue);
          },
        ),
        SizedBox(
          height: 16.h,
        ),
        CustomTextField(
          title: AppStrings.nationalID,
          controller: TextEditingController(),
          hint: AppStrings.enterNationalID,
        ),
        SizedBox(
          height: 16.h,
        ),
        Row(
          children: [
            CustomTextField(
              width: 163,
              title: 'Gender',
              controller: TextEditingController(),
              hint: 'gender',
              isDropdown: true,
              items: const ['Male', 'Female'],
              onChanged: (selectedValue) {
                print(selectedValue);
              },
            ),

            SizedBox(
              width: 17.w,
            ),
            CustomTextField(
              width: 163,
              title: AppStrings.martialState,
              controller: TextEditingController(),
              hint: 'Martial State',
              isDropdown: true,
              items: const ['Single', 'Maried'],
              onChanged: (selectedValue) {
                print(selectedValue);
              },
            ),
          ],
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
          height: 16.h,
        ),
        CustomTextField(
          title: AppStrings.rePassword,
          controller: TextEditingController(),
          hint: AppStrings.enterPassword,
        ),
        SizedBox(
          height: 36.h,
        ),
        CustomButton(
          title: AppStrings.signup,
          onPressed: () {
            context.go(Routes.verificationCode);
          },
        ),
      ],
    );
  }
}
