import 'package:flutter/material.dart';
import 'package:palette_generator_master/palette_generator_master.dart';

class ColorPaletteExtractor {
  static Future<Map<String, Color>> fromImage(
    ImageProvider imageProvider,
  ) async {
    final palette = await PaletteGeneratorMaster.fromImageProvider(
      imageProvider,
      size: const Size(200, 100),
    );

    return {
      'dominant': palette.dominantColor?.color ?? Colors.grey,
      'vibrant': palette.vibrantColor?.color ?? Colors.grey,
      'lightVibrant': palette.lightVibrantColor?.color ?? Colors.grey,
      'darkVibrant': palette.darkVibrantColor?.color ?? Colors.grey,
      'muted': palette.mutedColor?.color ?? Colors.grey,
      'lightMuted': palette.lightMutedColor?.color ?? Colors.grey,
      'darkMuted': palette.darkMutedColor?.color ?? Colors.grey,
    };
  }

  static Future<LinearGradient> gradientFromImage(
    ImageProvider imageProvider,
  ) async {
    final colors = await fromImage(imageProvider);
    final dominant = colors['dominant']!;
    final secondary =
        colors['vibrant'] ?? colors['muted'] ?? dominant.withValues(alpha: 0.8);

    return LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [dominant, secondary],
    );
  }
}
