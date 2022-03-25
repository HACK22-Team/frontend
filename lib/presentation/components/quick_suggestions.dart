import 'package:flutter/material.dart';

import '../global_styles/design_system/styles.dart';

class QuickSuggestions extends StatelessWidget {
  const QuickSuggestions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SuggestionHeader(),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SuggestionItems(),
        )
      ],
    );
  }
}

class SuggestionHeader extends StatelessWidget {
  const SuggestionHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          color: Color(0xffEFEFEF), borderRadius: BorderRadius.circular(50)),
      child: Row(mainAxisSize: MainAxisSize.max, children: [
        Expanded(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
              decoration: BoxDecoration(
                  color: azul, borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Text("Support",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600)),
              )),
        ),
        SizedBox(width: 8),
        Expanded(
            child: Center(
          child: Text("Struggles",
              style: TextStyle(color: black, fontWeight: FontWeight.w600)),
        )),
        SizedBox(width: 8),
        Expanded(
            child: Center(
          child: Text("City",
              style: TextStyle(color: black, fontWeight: FontWeight.w600)),
        )),
      ]),
    );
  }
}

class SuggestionItems extends StatelessWidget {
  const SuggestionItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SuggestionItem(text: "I lost my ID"),
        SizedBox(width: 4),
        SuggestionItem(text: "I missed my train"),
        SizedBox(width: 4),
        SuggestionItem(text: "I didn’t print my ticket"),
        SizedBox(width: 4),
        SuggestionItem(text: "I need help"),
      ],
    );
  }
}

class SuggestionItem extends StatelessWidget {
  final String text;
  const SuggestionItem({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 4),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
            color: Color(0xffF8F8F8),
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: Color(0xffD4D4D4))),
        child: Text(text,
            style: TextStyle(
                color: black, fontWeight: FontWeight.w500, fontSize: 15)));
  }
}
