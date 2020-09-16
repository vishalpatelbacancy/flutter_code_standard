import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code_standard/common/colors.dart';

// ignore: must_be_immutable
class AppBottomNavigationBar extends StatefulWidget {
  Function onItemTapped;
  int selectedIndex = 0;

  AppBottomNavigationBar(this.onItemTapped);

  @override
  _AppBottomNavigationBarState createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: widget.selectedIndex,
        selectedItemColor: primaryColor,
        onTap:  widget.onItemTapped,/*(index) {
          widget.selectedIndex = index;
          widget.onItemTapped = (index) {};
          setState(() {});
        },*/
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), title: Text("Business")),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), title: Text("School")),
        ]);
  }
}

//Widget appBottomNavigationBar(Function(int) onItemTapped) {
//  return BottomNavigationBar(
//      currentIndex: 0,
//      selectedItemColor: primaryColor,
//      onTap: onItemTapped,
//      items: const <BottomNavigationBarItem>[
//        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
//        BottomNavigationBarItem(
//            icon: Icon(Icons.business), title: Text("Business")),
//        BottomNavigationBarItem(
//            icon: Icon(Icons.school), title: Text("School")),
//      ]);
//}
