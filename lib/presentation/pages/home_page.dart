import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hack_22/presentation/components/top_bar.dart';
import 'package:hack_22/presentation/pages/space_page.dart';
import 'package:hack_22/presentation/pages/spaces_page.dart';

import '../../services/track_space.dart';
import '../components/bottom_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.white,
          bottomNavigationBar: CustomBottomBar(),
          appBar: PreferredSize(
            child: Container(
                clipBehavior: Clip.none,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8)),
                    color: Colors.transparent,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        offset: Offset(0, 1.0),
                        blurRadius: 12.0,
                      )
                    ]),
                child: appBar),
            preferredSize: Size.fromHeight(kToolbarHeight),
          ),
          body: AutoRouter()),
    );
  }
}
