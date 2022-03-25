import 'package:flutter/material.dart';
import 'package:hack_22/presentation/components/quick_action_section.dart';
import 'package:hack_22/presentation/components/small_header.dart';
import 'package:hack_22/presentation/global_styles/design_system/styles.dart';

import '../components/icon_list.dart';
import '../components/quick_section_chip_section.dart';

class SpacePage extends StatelessWidget {
  const SpacePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SmallHeader(
        title: "St. Gallen",
        imageSrc: "assets/images/st_gallen.jpg",
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Contact",
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w700, color: black)),
            SizedBox(height: 16),
            Text("City",
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w600, color: black)),
            SizedBox(height: 6),
            IconList(icons: [
              IconListItem(
                  iconName: "Mayor", iconSrc: "assets/images/government.png"),
              IconListItem(
                  iconName: "City Planners",
                  iconSrc: "assets/images/city_planning.png"),
            ]),
            SizedBox(height: 12),
            Text("Support",
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w600, color: black)),
            SizedBox(height: 6),
            IconList(icons: [
              IconListItem(
                  iconName: "Mental Problems",
                  smallText: "Anonymous",
                  iconSrc: "assets/images/psychology.png"),
              IconListItem(
                  iconName: "Poverty",
                  smallText: "Anonymous",
                  iconSrc: "assets/images/poor.png"),
              IconListItem(
                  iconName: "Harassment",
                  smallText: "Anonymous",
                  iconSrc: "assets/images/harrassment.png"),
            ]),
            SizedBox(height: 32),
            Text("Quick Action",
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w700, color: black)),
            SizedBox(height: 18),
            QuickActionSection(),
            SizedBox(height: 4),
            QuickSectionChipSection(),
            SizedBox(height: 18),
          ],
        ),
      )
    ]));
  }
}
