import 'package:flutter/material.dart';
import 'package:hack_22/presentation/components/top_bar.dart';
import 'package:hack_22/presentation/pages/spaces_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  offset: Offset(0, 1.0),
                  blurRadius: 12.0,
                )
              ]),
              child: appBar),
          preferredSize: Size.fromHeight(kToolbarHeight),
        ),
        body: const SpacesPage());
  }
}
