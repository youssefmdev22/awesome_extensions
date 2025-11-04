import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

extension BounceableEffect on Widget {
  Widget applyBounceable({
    required void Function()? onTap,
    void Function(TapUpDetails)? onTapUp,
    void Function(TapDownDetails)? onTapDown,
    void Function()? onTapCancel,
    void Function()? onLongPress,
    Duration? duration = const Duration(milliseconds: 200),
    Duration? reverseDuration = const Duration(milliseconds: 200),
    Curve curve = Curves.decelerate,
    Curve? reverseCurve = Curves.decelerate,
    double scaleFactor = 0.8,
    HitTestBehavior? hitTestBehavior,
  }) {
    return Bounceable(
      onTap: onTap,
      onTapUp: onTapUp,
      onTapDown: onTapDown,
      onTapCancel: onTapCancel,
      onLongPress: onLongPress,
      duration: duration,
      reverseDuration: reverseDuration,
      curve: curve,
      reverseCurve: reverseCurve,
      scaleFactor: scaleFactor,
      hitTestBehavior: hitTestBehavior,
      child: this,
    );
  }
}
