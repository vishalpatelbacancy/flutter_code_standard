import 'package:flutter/material.dart';
import 'package:flutter_code_standard/common/colors.dart';
import 'package:flutter_code_standard/common/string.dart';

//            Container(
//              width: MediaQuery.of(context).size.width,
//              height: 45,
//              child: RaisedButton(
//                onPressed: () {
//                  _validateInputs();
//                },
//                splashColor: Colors.lightBlue,
//                color: Theme.of(context).primaryColor,
//                textColor: Colors.white,
//                child: Text(
//                  lblLogin,
//                  style: TextStyle(fontSize: 16),
//                ),
//                elevation: 10,
//              ),
//            ),
Widget button(BuildContext context, VoidCallback callback) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 45,
    child: InkWell(
      onTap: callback,
      child: RaisedButton(
        splashColor: primaryDarkColor,
        color: primaryColor,
        textColor: Colors.white,
        child: Text(
          lblLogin,
          style: TextStyle(fontSize: 16),
        ),
        elevation: 10,
        onPressed: callback,
      ),
    ),
  );
}
