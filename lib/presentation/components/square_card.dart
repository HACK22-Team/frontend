import 'package:flutter/material.dart';

class SquareCard extends StatelessWidget {
  SquareCard({Key? key, required this.imageSrc}) : super(key: key);
  String imageSrc;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            offset: Offset(0, 1.0),
            blurRadius: 12.0,
          ),
        ],
      ),
      //child: Image.asset(),
    );
  }
}
