import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_icons.dart';
import '../../../../../core/constant/app_strings.dart';
import '../../../../../core/constant/app_styles.dart';
import '../../../../../core/utils/widgets/custom_icon_container.dart';
import '../../../../../generated/assets.dart';

class BalanceRow extends StatelessWidget {
  const BalanceRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w,),
      child: SizedBox(
        height: 51.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.currentBalance,
                  style: AppStyles.textBody14Regular.copyWith(
                    color: AppColors.black,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '5000',
                      style: AppStyles.headline20.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 4.0.w,
                        right: 1.35.w,
                      ),
                      child: SvgPicture.asset(
                        Assets.imagesGroup644,
                      ),
                    ),
                    Text(
                      AppStrings.points,
                      style: AppStyles.textBody12Regular.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const CustomIconContainer(
              icon: AppIcons.refresh,
              color: AppColors.appleGreen,
            ),
          ],
        ),
      ),
    );
  }
}
