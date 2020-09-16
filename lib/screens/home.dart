import 'package:flutter/material.dart';
import 'package:flutter_code_standard/common/colors.dart';
import 'package:flutter_code_standard/common/string.dart';
import 'package:flutter_code_standard/widgets/appbar.dart';
import 'package:flutter_code_standard/widgets/appdrawer.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'businesstab.dart';
import 'hometab.dart';
import 'schooltab.dart';

class HomeScreen extends StatefulWidget {
  int selectedIndex = 0;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime currentBackPressTime;

  List<Widget> _widgetOptions = <Widget>[
    HomeTab(),
    AccountTab(),
    MessageTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer: appDrawer(context),
          appBar: appBar(context),
          bottomNavigationBar: appBottomNavigationBar(),
          body: WillPopScope(
            child:
                //For Activate TabBar remove below comment
                TabBarView(children: _widgetOptions),
            //For Activate Bottom Navigation Bar remove below comment
            //_widgetOptions.elementAt(widget.selectedIndex),
            onWillPop: () => onWillPop(),
          ),
        ));
  }

/*_widgetOptions.elementAt(widget.selectedIndex),*/
  Widget appBottomNavigationBar() {
    return BottomNavigationBar(
        currentIndex: widget.selectedIndex,
        selectedItemColor: primaryColor,
        onTap: (index) {
          widget.selectedIndex = index;
          setState(() {});
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), title: Text("Business")),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), title: Text("School")),
        ]);
  }

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime) > Duration(seconds: 3)) {
      currentBackPressTime = now;
      Fluttertoast.showToast(msg: lblExitWarning);
      return Future.value(false);
    }
    return Future.value(true);
  }
}
