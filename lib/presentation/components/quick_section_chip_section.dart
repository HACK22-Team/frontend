import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hack_22/presentation/components/qa_dialog.dart';
import 'package:hack_22/presentation/global_styles/design_system/styles.dart';

class QuickSectionChipSection extends StatelessWidget {
  const QuickSectionChipSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        QuickChip(text: "I’ve been harassed"),
        GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return QuickActionDialog();
                  });
            },
            child: const QuickChip(text: "I’ve been racially insulted")),
        QuickChip(text: "I’ve wittnessed somebody else getting hurt"),
        QuickChip(text: "I’m experiencing domestic abuse"),
      ],
    );
  }
}

class QuickChip extends StatelessWidget {
  final String text;
  const QuickChip({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8, right: 8),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100), color: Color(0xffE8E8E8)),
      child: Text(text,
          style: TextStyle(
              color: black, fontSize: 12, fontWeight: FontWeight.w600)),
    );
  }
}
