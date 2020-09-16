import 'package:flutter/material.dart';

fieldFocusChange(
    BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
  currentFocus.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
}

navigateReplaceTo(
  BuildContext context,
  screen,
) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => screen));
}

navigateTo(
  BuildContext context,
  screen,
) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
}

getScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

pop(BuildContext context) {
  Navigator.pop(context);
}

appTabBar() {
  return TabBar(indicatorWeight: 4, tabs: [
    Tab(
      icon: Icon(Icons.home),
    ),
    Tab(
      icon: Icon(Icons.business),
    ),
    Tab(
      icon: Icon(Icons.school),
    ),
  ]);
}
