import 'package:flutter/material.dart';
import 'package:calculator_app/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator App",
      theme: ThemeData(
          appBarTheme: AppBarTheme(centerTitle: true),
          primarySwatch: Colors.teal),
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
