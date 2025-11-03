import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_tilt/flutter_tilt.dart';

extension TiltExtension on Widget {
  Widget applyTilt({
    ChildLayout childLayout = const ChildLayout(),
    StreamController<TiltStreamModel>? tiltStreamController,
    bool disable = false,
    int fps = 120,
    BoxBorder? border,
    BorderRadiusGeometry? borderRadius,
    Clip clipBehavior = Clip.antiAlias,
    TiltConfig tiltConfig = const TiltConfig(),
    LightShadowMode lightShadowMode = LightShadowMode.base,
    LightConfig lightConfig = const LightConfig(),
    ShadowConfig shadowConfig = const ShadowConfig(),
    void Function(TiltDataModel, GesturesType)? onGestureMove,
    void Function(TiltDataModel, GesturesType)? onGestureLeave,
  }) {
    return Tilt(
      childLayout: childLayout,
      tiltStreamController: tiltStreamController,
      disable: disable,
      fps: fps,
      border: border,
      borderRadius: borderRadius,
      clipBehavior: clipBehavior,
      tiltConfig: tiltConfig,
      lightShadowMode: lightShadowMode,
      lightConfig: lightConfig,
      shadowConfig: shadowConfig,
      onGestureMove: onGestureMove,
      onGestureLeave: onGestureLeave,
      child: this,
    );
  }

  Widget applySimpleTilt({
    BorderRadiusGeometry? radius,
    Color? color,
    Color? shadowColor,
  }) {
    return applyTilt(
      borderRadius: radius,
      tiltConfig: const TiltConfig(angle: 20),
      lightConfig: LightConfig(color: color ?? Colors.white, maxIntensity: 0.3),
      shadowConfig: ShadowConfig(
        color: shadowColor ?? Colors.black26,
        offsetInitial: Offset(8, 8),
      ),
    );
  }

  Widget applyNeonTilt({
    BorderRadiusGeometry? radius,
    Color color = Colors.cyan,
  }) {
    return applyTilt(
      borderRadius: radius,
      tiltConfig: TiltConfig(angle: 25, enableReverse: true),
      lightShadowMode: LightShadowMode.base,
      lightConfig: LightConfig(
        color: color,
        maxIntensity: 0.8,
        spreadFactor: 2.0,
      ),
      shadowConfig: ShadowConfig(
        color: color.withValues(alpha: 0.3),
        offsetInitial: const Offset(10, 10),
      ),
    );
  }

  Widget applyGlassTilt({
    BorderRadiusGeometry? radius,
    double blur = 20,
    Color tint = Colors.white30,
  }) {
    return ClipRRect(
      borderRadius: radius ?? BorderRadius.zero,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          color: tint,
          child: applyTilt(
            borderRadius: radius,
            tiltConfig: const TiltConfig(angle: 15),
            lightConfig: const LightConfig(maxIntensity: 0.4),
          ),
        ),
      ),
    );
  }

  Widget applyDarkTilt({
    BorderRadiusGeometry? radius,
    Color? color,
    Color? shadowColor,
  }) {
    return applyTilt(
      tiltConfig: const TiltConfig(angle: 10),
      lightShadowMode: LightShadowMode.base,
      lightConfig: LightConfig(color: color ?? Colors.white24),
      shadowConfig: ShadowConfig(
        color: shadowColor ?? Colors.black54,
        offsetInitial: Offset(10, 10),
      ),
      borderRadius: radius,
    );
  }
}
