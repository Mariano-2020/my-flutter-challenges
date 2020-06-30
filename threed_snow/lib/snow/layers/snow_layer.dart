import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:threed_snow/snow/snow_paint.dart';

class SnowLayer extends StatefulWidget {
  @override
  _SnowLayerState createState() => _SnowLayerState();
}

class _SnowLayerState extends State<SnowLayer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          child: CustomPaint(
            size: MediaQuery.of(context).size,
            painter: SnowPaint(
              snowCount: 300,
              snowRadius: 5,
            ),
            willChange: true,
          ),
        ),
        Container(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 1,
              sigmaY: 1,
            ),
            child: Container(
              color: Color(0xFF000000).withOpacity(.1),
            ),
          ),
        ),
      ],
    );
  }
}
