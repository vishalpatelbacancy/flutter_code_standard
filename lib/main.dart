import 'package:flutter/material.dart';
import 'package:flutter_code_standard/screens/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Code Standard',
        themeMode: ThemeMode.dark,
        home: SplashScreen());
  }
}
