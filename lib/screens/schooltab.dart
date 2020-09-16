import 'package:flutter/material.dart';
import 'package:flutter_code_standard/common/colors.dart';

class MessageTab extends StatefulWidget {
  @override
  _MessageTabState createState() => _MessageTabState();
}

class _MessageTabState extends State<MessageTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: Center(
        child: Text(
          "Message",
          style: TextStyle(fontSize: 30, color: primaryColor),
        ),
      ),
    );
  }
}
