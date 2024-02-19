import 'dart:ui';

import 'package:flutter/material.dart';

class Saturation extends StatelessWidget {
  const Saturation({
    super.key,
    required this.saturation,
    required this.child,
  });

  final double saturation;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (saturation == 1) return child;

    return ColorFiltered(
      colorFilter: ColorFilter.matrix(
        <double>[
          lerpDouble(0.2126, 1, saturation)!,
          lerpDouble(0.7152, 0, saturation)!,
          lerpDouble(0.0722, 0, saturation)!,
          0,
          0,
          lerpDouble(0.2126, 0, saturation)!,
          lerpDouble(0.7152, 1, saturation)!,
          lerpDouble(0.0722, 0, saturation)!,
          0,
          0,
          lerpDouble(0.2126, 0, saturation)!,
          lerpDouble(0.7152, 0, saturation)!,
          lerpDouble(0.0722, 1, saturation)!,
          0,
          0,
          0,
          0,
          0,
          1,
          0,
        ],
      ),
      child: child,
    );
  }
}
