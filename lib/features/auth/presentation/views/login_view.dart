import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:for_epay/features/auth/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
            child: const LoginViewBody()),
      ),
    );
  }
}
