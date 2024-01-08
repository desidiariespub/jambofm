/*
 *  background_image.dart
 *
 *  Created by Ilia Chirkunov <xc@yar.net> on 05.07.2023.
 */

import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
    required this.enable,
    required this.child,
  });

  final bool enable;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: enable
          ? const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.cover,
              ),
            )
          : null,
      child: child,
    );
  }
}
