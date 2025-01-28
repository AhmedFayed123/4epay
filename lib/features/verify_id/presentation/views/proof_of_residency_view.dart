import 'package:flutter/material.dart';
import 'package:for_epay/features/verify_id/presentation/views/widgets/proof_of_residency_view_body.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/routes.dart';
import '../../../../core/utils/widgets/custom_app_bar.dart';
import '../../../../core/utils/widgets/custom_logo_image.dart';

class ProofOfResidencyView extends StatelessWidget {
  const ProofOfResidencyView({super.key});

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
              ),
              const CustomLogoImage(),

              const ProofOfResidencyViewBody(),
            ],
          ),
        ),
      ),
    );
  }
}
