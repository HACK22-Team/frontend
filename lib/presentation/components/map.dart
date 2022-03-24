import 'package:flutter/material.dart';

class LogoMap extends StatelessWidget {
  const LogoMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/map.png',
      width: MediaQuery.of(context).size.width,
    );
  }
}
