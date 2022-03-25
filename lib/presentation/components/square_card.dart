import 'package:flutter/material.dart';

class SquareCard extends StatefulWidget {
  SquareCard({Key? key, required this.imageSrc, this.clipRound = false})
      : super(key: key);
  String imageSrc;
  bool clipRound;

  @override
  State<SquareCard> createState() => _SquareCardState();
}

class _SquareCardState extends State<SquareCard> {
  @override
  Widget build(BuildContext context) {
    if (!widget.clipRound) {
      return Container(
          height: 64,
          width: 64,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  offset: Offset(0, 1.0),
                  blurRadius: 12.0,
                ),
              ]),
          child: Image.asset(widget.imageSrc));
    } else {
      return Container(
          height: 64,
          width: 64,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                offset: Offset(0, 1.0),
                blurRadius: 12.0,
              ),
            ],
          ),
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  widget.imageSrc,
                ),
              ),
            ),
          ));
    }
  }
}
