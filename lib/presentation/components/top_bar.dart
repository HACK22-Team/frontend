import 'package:flutter/material.dart';
import 'package:hack_22/presentation/global_styles/design_system/styles.dart';

var appBar = AppBar(
    title: const Text(
      'Earling',
      style: TextStyle(color: black, fontSize: 18, fontWeight: FontWeight.w700),
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
            child: Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png",
              height: 40.0,
              width: 40.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
      )
    ]);
