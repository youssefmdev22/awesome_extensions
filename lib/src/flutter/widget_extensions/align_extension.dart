import 'package:flutter/material.dart';

extension AlignExtensions on Widget {
  Align alignAtBottomCenter({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) => Align(
    key: key,
    alignment: .bottomCenter,
    heightFactor: heightFactor,
    widthFactor: widthFactor,
    child: this,
  );

  Align alignAtBottomLeft({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) => Align(
    key: key,
    alignment: .bottomLeft,
    heightFactor: heightFactor,
    widthFactor: widthFactor,
    child: this,
  );

  Align alignAtBottomRight({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) => Align(
    key: key,
    alignment: .bottomRight,
    heightFactor: heightFactor,
    widthFactor: widthFactor,
    child: this,
  );

  Align alignAtCenter({Key? key, double? heightFactor, double? widthFactor}) =>
      Align(
        key: key,
        alignment: .center,
        heightFactor: heightFactor,
        widthFactor: widthFactor,
        child: this,
      );

  Align alignAtCenterLeft({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) => Align(
    key: key,
    alignment: .centerLeft,
    heightFactor: heightFactor,
    widthFactor: widthFactor,
    child: this,
  );

  Align alignAtCenterRight({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) => Align(
    key: key,
    alignment: .centerRight,
    heightFactor: heightFactor,
    widthFactor: widthFactor,
    child: this,
  );

  Align alignAtLERP(
    Alignment a,
    Alignment b,
    double t, {
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) => Align(
    key: key,
    alignment: .lerp(a, b, t)!,
    heightFactor: heightFactor,
    widthFactor: widthFactor,
    child: this,
  );

  Align alignAtTopCenter({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) => Align(
    key: key,
    alignment: .topCenter,
    heightFactor: heightFactor,
    widthFactor: widthFactor,
    child: this,
  );

  Align alignAtTopLeft({Key? key, double? heightFactor, double? widthFactor}) =>
      Align(
        key: key,
        alignment: .topLeft,
        heightFactor: heightFactor,
        widthFactor: widthFactor,
        child: this,
      );

  Align alignAtTopRight({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) => Align(
    key: key,
    alignment: .topRight,
    heightFactor: heightFactor,
    widthFactor: widthFactor,
    child: this,
  );

  Align alignXY(
    double x,
    double y, {
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) => Align(
    key: key,
    alignment: Alignment(x, y),
    heightFactor: heightFactor,
    widthFactor: widthFactor,
    child: this,
  );
}
