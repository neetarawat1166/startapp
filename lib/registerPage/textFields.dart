import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/RegisterPageProvider.dart';

Widget textFieldName() {
  return Consumer<RegisterPageProvider>(
    builder: (context, providerValue, child) {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: TextFormField(
          style: const TextStyle(color: Color.fromARGB(255, 2, 2, 2)),
          keyboardType: TextInputType.name,
          textCapitalization: TextCapitalization.words,
          decoration: textFieldDecoration("Name"),
          onChanged: (value) {
            providerValue.nameController(value);
          },
        ),
      );
    },
  );
}

Widget textFieldEmail() {
  return Consumer<RegisterPageProvider>(
    builder: (context, providerValue, child) {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: TextFormField(
          style: const TextStyle(color: Color.fromARGB(255, 18, 17, 17)),
          keyboardType: TextInputType.emailAddress,
          decoration: textFieldDecoration("Email"),
          onChanged: (value) {
            providerValue.emailController(value);
          },
        ),
      );
    },
  );
}

Widget textFieldPassword() {
  return Consumer<RegisterPageProvider>(
    builder: (context, providerValue, child) {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: TextFormField(
          obscureText: true,
          style: const TextStyle(color: Color.fromARGB(255, 18, 17, 17)),
          keyboardType: TextInputType.visiblePassword,
          decoration: textFieldDecoration("Password"),
          onChanged: (value) {
            providerValue.passwordController(value);
          },
        ),
      );
    },
  );
}

InputDecoration textFieldDecoration(String label) {
  return InputDecoration(
      labelText: label,
      labelStyle: const TextStyle(color: Color.fromARGB(255, 9, 9, 9)),
      enabledBorder: textFieldBorder(),
      focusedBorder: textFieldBorder());
}

OutlineInputBorder textFieldBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(
          color: Color.fromARGB(255, 17, 16, 16),
          style: BorderStyle.solid,
          width: 2));
}
