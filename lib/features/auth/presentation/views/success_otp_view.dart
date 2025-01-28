import 'package:flutter/material.dart';
import 'package:for_epay/core/constant/app_icons.dart';
import 'package:for_epay/features/auth/presentation/views/widgets/success_otp_view_body.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/router/routes.dart';
import '../../../../core/utils/widgets/custom_app_bar.dart';

class SuccessOtpView extends StatelessWidget {
  const SuccessOtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                title: '',
                onPressed: () {
                  context.go(Routes.auth);
                },
                icon: AppIcons.close,
              ),
              const SuccessOtpViewBody(),
            ],
          ),
        ),
      ),
    );
  }
}
