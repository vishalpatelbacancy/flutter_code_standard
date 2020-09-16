import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code_standard/common/base.dart';
import 'package:flutter_code_standard/common/colors.dart';
import 'package:flutter_code_standard/common/constants.dart';
import 'package:flutter_code_standard/common/custom_dialog.dart';
import 'package:flutter_code_standard/common/images.dart';
import 'package:flutter_code_standard/common/string.dart';
import 'package:flutter_code_standard/screens/login.dart';
import 'package:flutter_code_standard/screens/notifications.dart';

Widget appDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
            decoration: BoxDecoration(color: primaryColor),
            child: Column(
              children: <Widget>[
                Container(
                  child: new ClipRRect(
                    borderRadius: new BorderRadius.circular(50.0),
                    child: Image.asset(
                      BACKGROUND,
                      fit: BoxFit.fill,
                    ),
                  ),
                  height: getScreenHeight(context) / 7,
                  width: getScreenHeight(context) / 7,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "User Name",
                    style: TextStyle(color: whiteColor, fontSize: 20),
                  ),
                )
              ],
            )),
        ListTile(
          onTap: () {
            pop(context);
          },
          title: Text("My Account"),
          leading: Icon(
            Icons.person,
            color: blackColor,
          ),
        ),
        ListTile(
          onTap: () {
            pop(context);
            navigateTo(context, NotificationScreen());
          },
          title: Text("Notification"),
          leading: Icon(
            Icons.notifications,
            color: blackColor,
          ),
        ),
        ListTile(
          onTap: () {
            pop(context);
          },
          title: Text("Setting"),
          leading: Icon(
            Icons.settings,
            color: blackColor,
          ),
        ),
        ListTile(
          onTap: () {
            pop(context);
          },
          title: Text("Calendar"),
          leading: Icon(
            Icons.calendar_today,
            color: blackColor,
          ),
        ),
        ListTile(
          onTap: () {
            showDialog(
                context: context,
                builder: (context) => CustomDialogYesNo(
                      msg: txtLogoutMessage,
                      yesCallBack: () {
                        logout(context,LoginScreen());
                      },
                      noCallBack: () {
                        Navigator.pop(context);
                      },
                    ));
          },
          title: Text("Logout"),
          leading: Icon(
            Icons.input,
            color: blackColor,
          ),
        ),
      ],
    ),
  );
}

