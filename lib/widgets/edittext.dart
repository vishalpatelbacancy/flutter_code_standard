import 'package:flutter/material.dart';
import 'package:flutter_code_standard/common/string.dart';

//            TextFormField(
//              focusNode: emailFocusNode,
//              autocorrect: false,
//              maxLines: 1,
//              keyboardType: TextInputType.emailAddress,
//              controller: emailController,
//              textInputAction: TextInputAction.next,
//              onFieldSubmitted: (value) {
//                _fieldFocusChange(context, emailFocusNode, passwordFocusNode);
//              },
//              onSaved: (value) {
//                email = value;
//              },
//              validator: (value) {
//                return validateEmail(value);
//              },
//              decoration: InputDecoration(
//                  labelText: hintEmail, border: OutlineInputBorder()),
//            ),
Widget emailTextField(
  FocusNode focusNode,
  TextEditingController controller,
    Function(String) onFieldSubmitted,
  Function(String) onSaved,
  Function(String) validator,
) {
  return TextFormField(
    focusNode: focusNode,
    autocorrect: false,
    maxLines: 1,
    keyboardType: TextInputType.emailAddress,
    controller: controller,
    textInputAction: TextInputAction.next,
    onFieldSubmitted: onFieldSubmitted,
    onSaved: onSaved,
    validator: validator,
    decoration:
        InputDecoration(labelText: hintEmail, border: OutlineInputBorder()),
  );
}

//            TextFormField(
//              focusNode: passwordFocusNode,
//              autocorrect: false,
//              maxLines: 1,
//              obscureText: true,
//              keyboardType: TextInputType.text,
//              controller: passwordController,
//              textInputAction: TextInputAction.done,
//              onFieldSubmitted: (value) {
//                passwordFocusNode.unfocus();
//              },
//              onSaved: (value) {
//                password = value;
//              },
//              validator: (value) {
//                return validatePassword(value);
//              },
//              decoration: InputDecoration(
//                  labelText: hintPassword, border: OutlineInputBorder()),
//            )
Widget passwordTextField(
  FocusNode focusNode,
  TextEditingController controller,
  Function(String) onFieldSubmitted,
  Function(String) onSaved,
  Function(String) validator,
) {
  return TextFormField(
    focusNode: focusNode,
    autocorrect: false,
    maxLines: 1,
    obscureText: true,
    keyboardType: TextInputType.text,
    controller: controller,
    textInputAction: TextInputAction.done,
    onFieldSubmitted: onFieldSubmitted,
    onSaved: onSaved,
    validator: validator,
    decoration:
        InputDecoration(labelText: hintPassword, border: OutlineInputBorder()),
  );
}

Widget simpleTextField(
  FocusNode focusNode,
  TextEditingController controller,
  Function(String) onFieldSubmitted,
  Function(String) onSaved,
  Function(String) validator,
) {
  return TextFormField(
    focusNode: focusNode,
    autocorrect: false,
    maxLines: 1,
    obscureText: true,
    keyboardType: TextInputType.text,
    controller: controller,
    textInputAction: TextInputAction.next,
    onFieldSubmitted: onFieldSubmitted,
    onSaved: onSaved,
    validator: validator,
    decoration:
        InputDecoration(labelText: hintPassword, border: OutlineInputBorder()),
  );
}

Widget multilineTextField(
  int maxLines,
  FocusNode focusNode,
  TextEditingController controller,
  Function(String) onFieldSubmitted,
  Function(String) onSaved,
  Function(String) validator,
) {
  return TextFormField(
    focusNode: focusNode,
    autocorrect: false,
    maxLines: maxLines,
    obscureText: true,
    keyboardType: TextInputType.text,
    controller: controller,
    textInputAction: TextInputAction.next,
    onFieldSubmitted: onFieldSubmitted,
    onSaved: onSaved,
    validator: validator,
    decoration:
        InputDecoration(labelText: hintPassword, border: OutlineInputBorder()),
  );
}

Widget mobileNumberTextField(
  FocusNode focusNode,
  TextEditingController controller,
  Function(String) onFieldSubmitted,
  Function(String) onSaved,
  Function(String) validator,
) {
  return TextFormField(
    focusNode: focusNode,
    autocorrect: false,
    maxLines: 1,
    maxLength: 10,
    obscureText: true,
    keyboardType: TextInputType.number,
    controller: controller,
    textInputAction: TextInputAction.next,
    onFieldSubmitted: onFieldSubmitted,
    onSaved: onSaved,
    validator: validator,
    decoration:
        InputDecoration(labelText: hintPassword, border: OutlineInputBorder()),
  );
}
