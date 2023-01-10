import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Faculty/createQuiz/alertDialogAddQuestions/dialogAddQuestion.dart';
import 'alertDialogs/alertDialogLogout.dart';

AppBar appBarWithLogout(context,title) {
  return AppBar(
    title: Text(title),
    centerTitle: true,
    elevation: 10,
    actions: [
      containerLogout(context),

    ],
    backgroundColor: Colors.blueGrey,
  );
}
AppBar appBarSimple(context,title) {
  return AppBar(
    title: Text(title),
    centerTitle: true,
    elevation: 10,
    backgroundColor: Colors.blueGrey,
  );
}

AppBar appBarSimpleWithoutBack(context,title) {
  return AppBar(
    title: Text(title),
    centerTitle: true,
    elevation: 10,
    automaticallyImplyLeading: false,
    backgroundColor: Colors.blueGrey,
  );
}

AppBar appBarCreate(context,title) {
  return AppBar(
    title: Text(title),
    centerTitle: true,
    elevation: 10,
    backgroundColor: Colors.blueGrey,
    actions: [
      addQuestionsButton(context),
    ],
  );
}


Container containerLogout(context) {
  return Container(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return alertDialogSignOut(context);
              },
            );
          },
          child: Icon(FontAwesomeIcons.rightFromBracket)));
}
