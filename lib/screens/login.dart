import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_code_standard/common/base.dart';
import 'package:flutter_code_standard/common/colors.dart';
import 'package:flutter_code_standard/common/input_type_validation.dart';
import 'package:flutter_code_standard/common/string.dart';
import 'package:flutter_code_standard/widgets/button.dart';
import 'package:flutter_code_standard/widgets/edittext.dart';

import 'home.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email, password;
  TextEditingController emailController, passwordController;
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottom fields not show on keyboard
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(
                  top: 100,
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          lblLogin,
                          style: TextStyle(fontSize: 40, color: primaryColor),
                        ),
                      ],
                    ),
                    formView(),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "you already have an account? Register",
                    style: TextStyle(color: primaryDarkColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget formView() {
    return Container(
      margin: EdgeInsets.only(
        top: 50,
        right: 20,
        left: 20,
      ),
      child: Form(
        key: _formKey,
        autovalidate: _autoValidate,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            emailTextField(emailFocusNode, emailController, (onFieldSubmitted) {
              fieldFocusChange(context, emailFocusNode, passwordFocusNode);
            }, (onSaved) {
              email = onSaved;
            }, (validator) {
              return validateEmail(validator);
            }),
            SizedBox(
              height: 30,
            ),
            passwordTextField(passwordFocusNode, passwordController,
                (onFieldSubmitted) {
              print("onFieldSubmitted");
              passwordFocusNode.unfocus();
              //validateInputs();
              navigateReplaceTo(context, HomeScreen());
            }, (onSaved) {
              password = onSaved;
            }, (validator) {
              return validatePassword(validator);
            }),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "forgot password?",
                  style: TextStyle(color: primaryDarkColor),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            button(context, () {
              print("Click...");
              //validateInputs();
              navigateReplaceTo(context, HomeScreen());
            }),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  void validateInputs() {
    if (_formKey.currentState.validate()) {
      // If all data are correct then save data to out variables
      _formKey.currentState.save();
      navigateReplaceTo(context, HomeScreen());
    } else {
      // If all data are not valid then start auto validation.
      setState(() {
        _autoValidate = true;
      });
    }
  }
}
