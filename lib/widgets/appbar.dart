import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_code_standard/common/base.dart';
import 'package:flutter_code_standard/screens/notifications.dart';

Widget appBar(BuildContext context) {
  return AppBar(
    title: Text("Flutter Application"),
    actions: <Widget>[
      InkWell(
        onTap: () {
          navigateTo(context, NotificationScreen());
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Icon(Icons.notifications),
        ),
      )
    ],
    bottom: appTabBar(),
  );
}
