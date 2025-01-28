import 'package:flutter/material.dart';
import 'package:for_epay/features/verify_id/presentation/views/widgets/id_success_view_body.dart';
class IdSuccessView extends StatelessWidget {
  const IdSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: IdSuccessViewBody(),
        ),
      ),
    );
  }
}
