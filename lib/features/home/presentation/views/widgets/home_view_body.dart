import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:for_epay/core/constant/app_colors.dart';
import 'package:for_epay/core/constant/app_strings.dart';
import 'package:for_epay/features/home/presentation/views/widgets/balance_row.dart';
import 'package:for_epay/features/home/presentation/views/widgets/send_money_list.dart';
import '../../../../../core/utils/widgets/custom_see_all_row.dart';
import 'home_app_bar.dart';
import 'options_row.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeAppBar(),
        const BalanceRow(),
        SizedBox(
          height: 24.h,
        ),
        const OptionsRow(),
        SizedBox(
          height: 9.h,
        ),
        Divider(height: .5.h,color: AppColors.dhusarGrey,),
        const CustomSeeAllRow(title: AppStrings.sendMoney,),
        const SendMoneyList(),
        const CustomSeeAllRow(title: AppStrings.nearestTraders,),

      ],
    );
  }
}
