import 'dart:math';

import 'package:flutter/material.dart';

class SnowPaint extends CustomPainter {
  final double snowCount;
  final double snowRadius;

  SnowPaint({
    this.snowCount,
    this.snowRadius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final _snowPaint = Paint()..color = Colors.white;

    final _random = Random();

    for (int i = 0; i < snowCount; i++) {
      final _randomX = _random.nextDouble();
      final _randomY = _random.nextDouble();
      final _randomRadius = _random.nextDouble() * snowRadius;

      final _x = _randomX * size.width;
      final _y = _randomY * size.height;

      final _position = Offset(_x, _y);

      canvas.drawCircle(
        _position,
        _randomRadius,
        _snowPaint,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
