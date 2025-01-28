
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/app_colors.dart';
import '../../constant/app_styles.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 247.w,
        height: 40.h,
        padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 8.h),
        decoration: BoxDecoration(
          color: AppColors.solitude,
          borderRadius: BorderRadius.circular(80.r),
        ),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: AppColors.black.withOpacity(.5),
              size: 20,
            ),
            SizedBox(width: 8.w),
            Expanded(
              child: TextField(
                controller: TextEditingController(),
                onChanged: (value){},
                style: AppStyles.textBody12Regular.copyWith(
                  color: AppColors.black.withOpacity(.4),
                ),
                decoration: InputDecoration(
                  hintText: "Pay by name or phone",
                  hintStyle: AppStyles.textBody12Regular.copyWith(
                    color: AppColors.black.withOpacity(.4),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );  }
}
