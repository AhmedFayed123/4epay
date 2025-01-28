import 'package:flutter/material.dart';
import 'package:for_epay/core/utils/widgets/custom_app_bar.dart';
import 'package:for_epay/features/auth/presentation/views/widgets/verification_code_view_body.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/routes.dart';

class VerificationCodeView extends StatelessWidget {
  const VerificationCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(title: '', onPressed: () {
                context.go(Routes.auth);
              }),
              const VerificationCodeViewBody(),
            ],
          ),
        ),
      ),
    );
  }
}
