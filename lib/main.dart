import 'package:flutter/material.dart';
import 'package:Caladium_Characteristics_Evaluation_System/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "vegetable flutter",
      theme: ThemeData(),
      home: const homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

