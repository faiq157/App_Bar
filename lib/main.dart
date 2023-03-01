import 'package:flutter/material.dart';
import 'package:prac_app/page/SimpleApp_Bar.dart';
import 'package:prac_app/page/Transferency_app_bar.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});
static const String title='Class Material';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Introduction page',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:
      //const Simple_app_bar(),
      const transApp_Bar(),
    );
  }
}
