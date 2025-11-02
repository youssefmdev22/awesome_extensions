import 'package:flutter/material.dart';

import '../responsive_text.dart';

extension ResponsiveFontSize on TextStyle {
  TextStyle responsiveFont(BuildContext context, {required double fontSize}) {
    return copyWith(fontSize: getResponsiveText(context, fontSize: fontSize));
  }
}

extension ContextResponsiveFontSize on BuildContext {
  TextStyle responsiveFont({
    bool inherit = true,
    Color? color,
    Color? backgroundColor,
    required double fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    TextLeadingDistribution? leadingDistribution,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<Shadow>? shadows,
    List<FontFeature>? fontFeatures,
    List<FontVariation>? fontVariations,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    String? package,
    TextOverflow? overflow,
  }) {
    return TextStyle(
      inherit: inherit = true,
      color: color,
      backgroundColor: backgroundColor,
      fontSize: getResponsiveText(this, fontSize: fontSize),
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      leadingDistribution: leadingDistribution,
      locale: locale,
      foreground: foreground,
      background: background,
      shadows: shadows,
      fontFeatures: fontFeatures,
      fontVariations: fontVariations,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
      debugLabel: debugLabel,
      fontFamily: fontFamily,
      fontFamilyFallback: fontFamilyFallback,
      package: package,
      overflow: overflow,
    );
  }
}

extension DoubleResponsiveFontSize on num {
  double responsiveFont(BuildContext context) {
    return getResponsiveText(context, fontSize: toDouble());
  }
}
