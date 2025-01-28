import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:for_epay/core/constant/app_colors.dart';

import '../../constant/app_icons.dart';
import '../../constant/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.title,
    required this.controller,
    this.isPassword = false,
    this.obscureText = false,
    this.onToggleVisibility,
    this.width = 343,
    this.type = TextInputType.text,
    this.errorText,
    required this.hint,
    this.isDropdown = false,
    this.items,
    this.onChanged,
  });

  final String title;
  final String hint;
  final TextEditingController controller;
  final bool isPassword;
  final bool obscureText;
  final double width;
  final VoidCallback? onToggleVisibility;
  final TextInputType type;
  final String? errorText;
  final bool isDropdown;
  final List<String>? items;
  final ValueChanged<String?>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.textBody14Light,
        ),
        SizedBox(
          height: 46.h,
          width: width.w,
          child: isDropdown
              ? DropdownButtonFormField<String>(
            value: controller.text.isNotEmpty ? controller.text : null,
            onChanged: onChanged,
            items: items?.map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item),
              );
            }).toList(),
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: AppStyles.textButton14.copyWith(color: AppColors.black),
              contentPadding: EdgeInsets.symmetric(
                vertical: 14.h,
                horizontal: 12.w,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.r)),
                borderSide: const BorderSide(
                  color: AppColors.dhusarGrey,
                  width: .5,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.r)),
                borderSide: const BorderSide(
                  color: AppColors.dhusarGrey,
                  width: .5,
                ),
              ),
              errorText: errorText,
            ),
          )
              : TextField(
            keyboardType: type,
            controller: controller,
            obscureText: isPassword ? obscureText : false,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: AppStyles.textButton14.copyWith(color: AppColors.black),
              contentPadding: EdgeInsets.symmetric(
                vertical: 14.h,
                horizontal: 12.w,
              ),
              suffixIcon: isPassword
                  ? IconButton(
                icon: Icon(
                  size: 18,
                  color: AppColors.black,
                  obscureText
                      ? AppIcons.visibilityOffOutlined
                      : AppIcons.visibilityOutlined,
                ),
                onPressed: onToggleVisibility,
              )
                  : null,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.r)),
                borderSide: const BorderSide(
                  color: AppColors.dhusarGrey,
                  width: .5,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.r)),
                borderSide: const BorderSide(
                  color: AppColors.dhusarGrey,
                  width: .5,
                ),
              ),
              errorText: errorText,
            ),
          ),
        ),
      ],
    );
  }
}
