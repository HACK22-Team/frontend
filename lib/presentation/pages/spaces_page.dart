import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hack_22/presentation/components/square_card.dart';

import '../components/map.dart';
import '../global_styles/design_system/styles.dart';

class SpacesPage extends StatelessWidget {
  const SpacesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 28, left: 24, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Your Spaces",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700)),
          SizedBox(height: 16),
          Text("Your Organizations",
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w600, color: black)),
          SizedBox(height: 16),
          Text("Recently passed by",
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w600, color: black)),
          Row(
            children: [SquareCard(imageSrc: "assets/logo1.jpg")],
          )
        ],
      ),
    );
  }
}
