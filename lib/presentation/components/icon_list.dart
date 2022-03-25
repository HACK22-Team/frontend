import 'package:flutter/material.dart';
import 'package:hack_22/presentation/components/square_card.dart';
import 'package:hack_22/presentation/global_styles/design_system/styles.dart';

class IconListItem {
  IconListItem(
      {required this.iconSrc, required this.iconName, this.smallText}) {}
  String iconSrc;
  String iconName;
  String? smallText;
}

class IconList extends StatelessWidget {
  List<IconListItem> icons = [];
  IconList({Key? key, required this.icons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      for (IconListItem icon in icons)
        Container(
          width: 80,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SquareCard(imageSrc: icon.iconSrc),
            SizedBox(height: 8),
            Container(
              height: 32,
              child: Text(icon.iconName,
                  style: TextStyle(
                      fontSize: 12, color: black, fontWeight: FontWeight.w600)),
            ),
            if (icon.smallText != null)
              Text(icon.smallText!,
                  style: TextStyle(
                      fontSize: 12,
                      color: gray,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic))
          ]),
        )
    ]);
  }
}
