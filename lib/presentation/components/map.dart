import 'package:flutter/material.dart';

class LogoMap extends StatelessWidget {
  const LogoMap({Key? key, required this.size}) : super(key: key);
  final double size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo2.png',
      scale: size,
    );
  }
}
