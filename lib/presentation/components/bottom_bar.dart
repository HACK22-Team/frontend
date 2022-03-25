import 'package:flutter/material.dart';
import 'package:hack_22/presentation/global_styles/design_system/styles.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      selectedItemColor: azul,
      selectedFontSize: 10,
      unselectedFontSize: 10,
      onTap: _onItemTapped,
      items: [
        BottomNavigationBarItem(icon: new Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: new Icon(Icons.message), label: "Message"),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), label: "Notifications")
      ],
    );
    ;
  }
}
