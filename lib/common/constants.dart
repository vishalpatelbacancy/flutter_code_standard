import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code_standard/common/pref.dart';

import 'custom_dialog.dart';

const int selectTeamDropDownPosition = 0;

getPrefValue(String key) {
  return Pref.getString(key, "");
}

String getToken(String key) {
  return "Bearer " + Pref.getString(key, "");
}

setPrefValue(key, value) {
  Pref.setString(key, value);
}

void dialog(String msg, BuildContext context) {
  showDialog(
      context: context,
      builder: (context) => CustomDialog(
            msg: msg,
            callBack: () {
              Navigator.pop(context);
            },
          ));
}

bool checkListIsNullAndBlank(list) {
  bool isTrue = false;
  list != null
      ? list.length > 0 ? isTrue = true : isTrue = false
      : isTrue = false;
  return isTrue;
}

String checkBlank(String s) {
  String data;
  s != null ? s != "" ? data = s : data = "" : data = "";
  return data;
}

void printResponse(String param, String response) {
  print("Parameters : " + param);
  print("Response : " + response);
}

Future<bool> checkConnection() async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.mobile) {
    return true;
  } else if (connectivityResult == ConnectivityResult.wifi) {
    return true;
  }
  return false;
}

void logout(BuildContext context,screen) {
  Navigator.pushAndRemoveUntil(context, PageRouteBuilder(pageBuilder:
      (BuildContext context, Animation animation,
      Animation secondaryAnimation) {
    return screen;
  }), (Route route) => false);
}
