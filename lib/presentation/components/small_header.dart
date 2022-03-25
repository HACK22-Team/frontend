import 'package:flutter/material.dart';
import 'package:hack_22/presentation/global_styles/design_system/styles.dart';

class SmallHeader extends StatelessWidget {
  final String title;
  final String imageSrc;
  const SmallHeader({Key? key, required this.title, required this.imageSrc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(fit: StackFit.loose, children: [
      Container(height: 335, color: Colors.white),
      Container(
          height: 200,
          decoration: BoxDecoration(
            color: azul,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0)),
          )),
      Positioned(
        top: 125,
        left: 32,
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 10,
              color: Colors.white,
            ),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                imageSrc,
              ),
            ),
          ),
        ),
      ),
      Positioned(
        top: 285,
        left: 32,
        child: Text(title,
            style: TextStyle(
                color: black, fontSize: 30, fontWeight: FontWeight.w700)),
      )
    ]);
  }
}
