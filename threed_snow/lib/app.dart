import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:threed_snow/snow/layers/snow_layer.dart';

class SnowApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Color(0xFF365264),
        child: Stack(
          children: <Widget>[
            SnowLayer(),
          ],
        ),
      ), color: null,
    );
  }
}
