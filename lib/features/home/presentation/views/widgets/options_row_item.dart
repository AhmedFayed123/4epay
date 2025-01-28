import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:for_epay/core/constant/app_styles.dart';
import 'package:for_epay/core/utils/widgets/custom_icon_container.dart';

class OptionsRowItem extends StatelessWidget {
  const OptionsRowItem({super.key, required this.icon, required this.title});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIconContainer(icon: icon),
        SizedBox(height: 8.h,),
        Text(
          title,
          style: AppStyles.textBody10,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
