import 'package:flutter/material.dart';

import '../../../generated/assets.dart';

class CustomLogoImage extends StatelessWidget {
  const CustomLogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Image.asset(
        Assets.imagesFrame18329,
      ),
    );
  }
}
