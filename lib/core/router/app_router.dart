import 'package:for_epay/core/router/routes.dart';
import 'package:for_epay/features/auth/presentation/views/auth_view.dart';
import 'package:for_epay/features/home/presentation/views/home_view.dart';
import 'package:for_epay/features/verify_id/presentation/views/id_success_view.dart';
import 'package:for_epay/features/verify_id/presentation/views/proof_of_residency_view.dart';
import 'package:for_epay/features/auth/presentation/views/success_otp_view.dart';
import 'package:for_epay/features/verify_id/presentation/views/verify_your_id_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/views/verification_code_view.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: Routes.auth,
      builder: (context, state) => const AuthView(),
    ),
    GoRoute(
      path: Routes.verificationCode,
      builder: (context, state) => const VerificationCodeView(),
    ),
    GoRoute(
      path: Routes.successView,
      builder: (context, state) => const SuccessOtpView(),
    ),
    GoRoute(
      path: Routes.proofOfResidencyView,
      builder: (context, state) => const ProofOfResidencyView(),
    ),
    GoRoute(
      path: Routes.verifyYourIdView,
      builder: (context, state) => const VerifyYourIdView(),
    ),
    GoRoute(
      path: Routes.idSuccessView,
      builder: (context, state) => const IdSuccessView(),
    ),
    GoRoute(
      path: Routes.home,
      builder: (context, state) => const HomeView(),
    ),
  ],
);
