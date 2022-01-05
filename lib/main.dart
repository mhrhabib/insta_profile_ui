import 'package:flutter/material.dart';

import 'screens/insta_profile.dart';
import 'screens/my_listview.dart';
import 'screens/my_second_listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData.dark(),
      home: MySecondListView(),
    );
  }
}
