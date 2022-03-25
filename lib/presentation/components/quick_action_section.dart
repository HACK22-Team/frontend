import 'package:flutter/material.dart';
import 'package:hack_22/presentation/global_styles/design_system/styles.dart';

class QuickActionSection extends StatefulWidget {
  QuickActionSection({Key? key}) : super(key: key);

  @override
  State<QuickActionSection> createState() => _QuickActionSectionState();
}

class _QuickActionSectionState extends State<QuickActionSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: azul, borderRadius: BorderRadius.circular(8)),
              child: Text(
                "Violence",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
            SizedBox(width: 12),
            Text("Support",
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w600, color: black)),
            SizedBox(width: 12),
            Text("Ideas",
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w600, color: black)),
            SizedBox(width: 12),
            Text("Other",
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w600, color: black))
          ],
        )
      ],
    );
  }
}
