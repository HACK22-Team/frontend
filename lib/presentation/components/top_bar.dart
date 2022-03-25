import 'package:flutter/material.dart';
import 'package:hack_22/presentation/global_styles/design_system/styles.dart';

var appBar = AppBar(
    automaticallyImplyLeading: false,
    title: Row(
      children: [
        Container(
            height: 40.0,
            width: 40.0,
            child: Image.asset('assets/images/company_logo_blue.png')),
        SizedBox(width: 14),
        const Text(
          'Earlin',
          style: TextStyle(
              fontFamily: 'Poppins',
              color: black,
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
      ],
    ),
    backgroundColor: Colors.white,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(8),
      ),
    ),
    actions: [
      Center(
        child: Container(
          margin: EdgeInsets.only(right: 16),
          width: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset(
              "assets/images/profile.png",
              height: 40.0,
              width: 40.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
      )
    ]);
