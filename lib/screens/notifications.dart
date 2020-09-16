import 'package:flutter/material.dart';
import 'package:flutter_code_standard/common/colors.dart';
import 'package:flutter_code_standard/common/images.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
      ),
      body: notification(),
    );
  }


  notification() {
    return ListView.builder(
        itemCount: 50,
        itemBuilder: (context, i) {
          return Card(
            margin: EdgeInsets.all(10),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                    child: new ClipRRect(
                      borderRadius: new BorderRadius.circular(50.0),
                      child: Image.asset(
                        BACKGROUND,
                        fit: BoxFit.fill,
                      ),
                    ),
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text(
                        "Title",
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Description",
                        style: TextStyle(color: primaryColor, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
