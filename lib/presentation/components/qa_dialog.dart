import 'dart:math';
import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../global_styles/design_system/styles.dart';

class QuickActionDialog extends StatelessWidget {
  const QuickActionDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Stack(fit: StackFit.expand, children: [
        Center(
          child: Container(
            height: 330,
            child: Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "I have been racially Insulted",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 14),
                    Text(
                      "We are not disclosing any of your personal details - please only disclose personal information you are confomfortable with sharing.",
                      style:
                          TextStyle(color: gray, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 24),
                    Column(
                      children: [
                        DialogButton(
                          text: "Talk to a professional",
                          iconData: Icons.phone,
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            AutoRouter.of(context).pushNamed('/chat');
                          },
                          child: DialogButton(
                              text: "Text a professional",
                              iconData: Icons.message),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 3.65,
          left: MediaQuery.of(context).size.width / 15,
          child: Container(
            height: MediaQuery.of(context).size.height / 12,
            width: MediaQuery.of(context).size.width / 12,
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.close,
              color: Colors.white,
              size: 18,
            ),
          ),
        ),
      ]),
    );
    ;
  }
}

class DialogButton extends StatelessWidget {
  String text;
  IconData iconData;
  DialogButton({Key? key, required this.text, required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration:
            BoxDecoration(color: black, borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            Icon(
              iconData,
              color: Colors.white,
            ),
            SizedBox(width: 16),
            Text(
              text,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ],
        ));
  }
}
