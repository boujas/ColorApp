import 'dart:math';

import 'dart:ui';

class ColorUtil {
  static Color getRandomColor() {
    return Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }
}