import 'package:flutter/material.dart';

var appBar = AppBar(title: const Text('AppBar Demo'), actions: <Widget>[
  IconButton(
    icon: const Icon(Icons.add_alert),
    tooltip: 'Show Snackbar',
    onPressed: () {},
  ),
  IconButton(
    icon: const Icon(Icons.navigate_next),
    tooltip: 'Go to the next page',
    onPressed: () {},
  )
]);
