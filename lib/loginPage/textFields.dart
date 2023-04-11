import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/loginPageProvider.dart';

// Text Field for Email.....................................
Widget textFieldEmail() {
  return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Consumer<LoginPageProvider>(
        builder: (context, providerValue, child) {
          return TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: inputTextDecoration("Email"),
              onChanged: (value) {
                providerValue.emailNotifier(value);
              },
              style: textStyleLabel());
        },
      ));
}

// Text Field for password.....................................
Widget textFieldPassword() {
  return Padding(
    padding: const EdgeInsets.all(18.0),
    child: Consumer<LoginPageProvider>(
      builder: (context, providerValue, child) {
        return TextFormField(
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
          style: textStyleLabel(),
          decoration: inputTextDecoration("Password"),
          onChanged: (value) {
            providerValue.passwordNotifier(value);
          },
        );
      },
    ),
  );
}

// Input Decoration for above TextFormFields.....................
InputDecoration inputTextDecoration(String value) {
  return InputDecoration(
    contentPadding: const EdgeInsets.all(20),
    labelText: value,
    labelStyle: textStyleLabel(),
    focusColor: Color.fromARGB(255, 11, 11, 11),
    focusedBorder: textFieldBorder(),
    enabledBorder: textFieldBorder(),
  );
}

// Border for above TextFormFields...............................
OutlineInputBorder textFieldBorder() {
  return OutlineInputBorder(
      borderSide: const BorderSide(color: Color.fromARGB(255, 18, 18, 18)),
      borderRadius: BorderRadius.circular(20),
      gapPadding: 5);
}

// Text Styling for above TextFormFields.........................
TextStyle textStyleLabel() {
  return const TextStyle(color: Color.fromARGB(255, 2, 2, 2));
}
