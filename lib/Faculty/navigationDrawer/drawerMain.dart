import 'package:flutter/material.dart';


import '../../reusableWidgets/Responsive.dart';

import '../../reusableWidgets/drawerHeading.dart';
import 'drawerBody.dart';

Drawer navigationDrawer(context) {
  return Drawer(
    width: screenWidth(context) / 1.6,
    elevation: 20,
    child: SingleChildScrollView(
      child: Column(
        children: [
          drawerHeader(),
          listTileMyQuiz(),
          listTileCreate(context),
          listTileProfile(),
          listTileAbout(),
          listTileShare(),
        ],
      ),
    ),
  );
}