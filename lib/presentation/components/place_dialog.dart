import 'package:flutter/material.dart';
import 'package:hack_22/presentation/global_styles/design_system/styles.dart';

class PlaceDialog extends StatelessWidget {
  const PlaceDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
        title: Text("Hack2022", style: TextStyle(fontWeight: FontWeight.w600)),
        children: [
          Container(
              height: 300, child: Image.asset('assets/images/hall_map.png')),
          Container(
              child: Text(
                  "We have detected that you have entered a registered space - would you like to join?")),
          Flexible(
            child: Row(
              children: [
                GestureDetector(
                    child: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: gray,
                            borderRadius: BorderRadius.circular(8)),
                        child: Text("Decline")),
                    SizedBox(width: 12),
                    Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: azul,
                            borderRadius: BorderRadius.circular(8)),
                        child: Text("Join")),
                  ],
                ))
              ],
            ),
          )
        ]);
  }
}
