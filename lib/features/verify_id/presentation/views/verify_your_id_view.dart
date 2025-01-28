import 'package:flutter/material.dart';
import 'package:for_epay/features/verify_id/presentation/views/widgets/verify_your_id_view_body.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/routes.dart';
import '../../../../core/utils/widgets/custom_app_bar.dart';
import '../../../../core/utils/widgets/custom_logo_image.dart';

class VerifyYourIdView extends StatelessWidget {
  const VerifyYourIdView({super.key});

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
                  context.go(Routes.proofOfResidencyView);
                },
              ),
              const CustomLogoImage(),

              const VerifyYourIdViewBody(),
            ],
          ),
        ),
      ),
    );
  }
}
