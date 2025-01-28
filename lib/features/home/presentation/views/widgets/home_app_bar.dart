import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:for_epay/core/constant/app_colors.dart';
import 'package:for_epay/core/constant/app_icons.dart';
import '../../../../../core/utils/widgets/custom_search_bar.dart';
import '../../../../../generated/assets.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 24.h),
      child: SizedBox(
        width: 343.w,
        height: 40.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40.r),
              child: Image.asset(
                height: 40.h,
                width: 40.w,
                Assets.imagesAvatar,
                fit: BoxFit.fill,
                alignment: Alignment.center,
              ),
            ),
            const CustomSearchBar(),
            Container(
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                color: AppColors.solitude,
                borderRadius: BorderRadius.circular(10000.r),
              ),
              child: Center(
                child: Icon(
                  AppIcons.history,
                  color: AppColors.black.withOpacity(.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
