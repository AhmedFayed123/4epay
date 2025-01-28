import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:for_epay/features/auth/presentation/views/signup_view.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_strings.dart';
import '../../../../../core/constant/app_styles.dart';
import '../login_view.dart';

class AuthViewBody extends StatelessWidget {
  const AuthViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w,),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            automaticallyImplyLeading: false,
            bottom: PreferredSize(
              preferredSize: Size.zero,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 6.0.h, horizontal: 8.w),
                height: 52.h,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: const [
                    BoxShadow(
                      color: AppColors.shadowColor,
                      offset: Offset(0, 0),
                      blurRadius: 6.2,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: AppColors.blueHill,
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: AppColors.primary,
                  labelStyle: AppStyles.headline16,
                  labelColor: AppColors.primary,
                  unselectedLabelColor: AppColors.blueHill,
                  tabs: [
                    Tab(
                      child: Container(
                        alignment: Alignment.center,
                        child: const Text(AppStrings.signup),
                      ),
                    ),
                    Tab(
                      child: Container(
                        alignment: Alignment.center,
                        child: const Text(AppStrings.login),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
          body: const TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              SignupView(),
              LoginView(),
            ],
          ),
        ),
      ),
    );
  }
}
