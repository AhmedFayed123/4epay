import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:for_epay/core/constant/app_icons.dart';
import 'package:for_epay/core/constant/app_strings.dart';
import 'package:for_epay/features/home/presentation/views/widgets/options_row_item.dart';

class OptionsRow extends StatelessWidget {
  const OptionsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w,),
      child: SizedBox(
        height: 72.14.h,
        width: 376.w,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OptionsRowItem(
              icon: AppIcons.personAddAlt1,
              title: AppStrings.scanPay,
            ),
            OptionsRowItem(
              icon: AppIcons.accountBalanceOutlined,
              title: AppStrings.sendToBank,
            ),
            OptionsRowItem(
              icon: AppIcons.personAddAlt1,
              title: AppStrings.sendToContact,
            ),
            OptionsRowItem(
              icon: AppIcons.accountBalanceOutlined,
              title: AppStrings.paymentRequest,
            ),
          ],
        ),
      ),
    );
  }
}
