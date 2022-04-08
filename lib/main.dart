import 'package:flutter/material.dart';
import 'package:project_667/Pages/Arabic.dart';
import 'package:project_667/Pages/LandingPage.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'แปลงเลขโรมัน',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: LandingPage(),
        );
  }
}
