import 'package:flutter/material.dart';
import 'package:for_epay/features/auth/presentation/views/widgets/auth_app_bar.dart';
import 'package:for_epay/features/auth/presentation/views/widgets/auth_view_body.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            AuthAppBar(),
            Expanded(
              child: AuthViewBody(),
            ),
          ],
        ),
      ),
    );
  }
}