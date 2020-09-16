import 'package:flutter/material.dart';
import 'package:flutter_code_standard/common/colors.dart';

class AccountTab extends StatefulWidget {
  @override
  _AccountTabState createState() => _AccountTabState();
}

class _AccountTabState extends State<AccountTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen,
      child: Center(
        child: Text(
          "Account",
          style: TextStyle(fontSize: 30, color: primaryColor),
        ),
      ),
    );
  }
}
