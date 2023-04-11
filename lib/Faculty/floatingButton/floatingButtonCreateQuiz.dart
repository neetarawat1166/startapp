import 'package:flutter/material.dart';
import 'package:flutter_project/Faculty/PdfFirebase/FirstPage.dart';
import 'package:provider/provider.dart';

import '../../reusableWidgets/Responsive.dart';
import '../../reusableWidgets/profileSection/getProfileInfo.dart';
import '../../reusableWidgets/profileSection/mainPage.dart';
import '../../reusableWidgets/profileSection/provider.dart';
import '../createQuiz/mainScreen.dart';

Widget floatingButtonCreatequiz(context) {
  return Container(
    decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black, width: 1)),
    width: 100,
    height: 45,
    child: floatingButtonquiz(context),
  );
}

Widget floatingButtonquiz(context) {
  return Consumer<ProfilePageProvider>(
    builder: (context, providerValue, child) {
      return FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        elevation: 20,
        isExtended: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: () async {
          await getProfileInfo(providerValue);
          if (providerValue.experience == "" ||
              providerValue.qualification == "" ||
              providerValue.about == "") {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text("Alert",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  elevation: 20,
                  content: const Text(
                      "Kindly Update Profile Section to Create Quiz"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Cancel",
                          style: TextStyle(fontSize: 15),
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ProfilePage(),
                              ));
                        },
                        child: const Text(
                          "Update",
                          style: TextStyle(fontSize: 15),
                        ))
                  ],
                );
              },
            );
          } else {
            await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CreateQuiz(),
                ));
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.add),
              Text("Quiz",
                  style: TextStyle(
                      fontSize: setSize(context, 18),
                      fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      );
    },
  );
}

Widget floatingButtonuploadbook(context) {
  return Container(
    decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black, width: 1)),
    width: 100,
    height: 45,
    child: floatingButtonbook(context),
  );
}

Widget floatingButtonbook(context) {
  return Consumer<ProfilePageProvider>(
    builder: (context, providerValue, child) {
      return FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        elevation: 20,
        isExtended: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: () async {
          await getProfileInfo(providerValue);
          if (providerValue.experience == "" ||
              providerValue.qualification == "" ||
              providerValue.about == "") {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text("Alert",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  elevation: 20,
                  content: const Text(
                      "Kindly Update Profile Section to Upload a Book"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Cancel",
                          style: TextStyle(fontSize: 15),
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ProfilePage(),
                              ));
                        },
                        child: const Text(
                          "Update",
                          style: TextStyle(fontSize: 15),
                        ))
                  ],
                );
              },
            );
          } else {
            await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FirstPage(),
                ));
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.add),
              Text("Book",
                  style: TextStyle(
                      fontSize: setSize(context, 18),
                      fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      );
    },
  );
}
