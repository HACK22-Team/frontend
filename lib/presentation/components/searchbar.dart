import 'package:flutter/material.dart';
import 'package:hack_22/presentation/global_styles/design_system/styles.dart';

class Searchbar extends StatefulWidget {
  Searchbar({Key? key}) : super(key: key);

  @override
  State<Searchbar> createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 24),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.14),
                offset: Offset(0, 1.0),
                blurRadius: 12.0,
              ),
            ]),
        child: TextFormField(
            style: TextStyle(
                color: black, fontWeight: FontWeight.w600, fontSize: 17),
            decoration: new InputDecoration(
              border: InputBorder.none,
            )));
  }
}
