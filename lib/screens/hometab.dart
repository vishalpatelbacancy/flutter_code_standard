import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_code_standard/common/colors.dart';
import 'package:flutter_code_standard/common/images.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(10, (index) {
        return Container(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Card(
                  borderOnForeground: true,
                  elevation: 2,
                  shape: Border(
                    left: BorderSide(
                      style: BorderStyle.solid,
                      color: Colors.blue,
                      width: 4,
                    )
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    BACKGROUND,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 30),
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Flutter " + index.toString(),
                    style: TextStyle(fontSize: 20, color: primaryColor),
                  )),
            ],
          ),
        );
      }),
    );
  }
}
