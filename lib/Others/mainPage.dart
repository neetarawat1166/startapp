import 'package:flutter/material.dart';

import 'customTabBar.dart';

class OtherPage extends StatefulWidget {
  const OtherPage({super.key});

  @override
  State<OtherPage> createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        tabBarTheme: TabBarTheme(labelColor: Colors.white),
      ),
      home: CustomTabBar(),
    );
  }
}
