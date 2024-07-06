import 'package:flutter/material.dart';
import 'color.dart';

class CustomGradient extends StatefulWidget {
  final Widget? child;

  const CustomGradient({super.key, this.child});

  @override
  State<CustomGradient> createState() => _CustomGradientState();
}

class _CustomGradientState extends State<CustomGradient> {
  @override
  Widget build(BuildContext context) {
    // to show gradient color
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (rect) => LinearGradient(
        colors: [
          app5,
          app,
          // app3,
          // app5.withOpacity(0.5),
          // app.withOpacity(0.6),
          // app.withOpacity(0.4),
          // app7,
          // app6.withOpacity(0.2),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ).createShader(rect),
      child: widget.child,
    );
  }
}
