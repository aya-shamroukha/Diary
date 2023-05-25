// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_project/project_1/home.dart';
import 'package:flutter_project/project_1/listpage.dart';
import 'package:flutter_project/project_1/homepage.dart';
import 'package:flutter_project/project_1/login.dart';
import 'package:flutter_project/project_1/singup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
 debugShowCheckedModeBanner: false,
      home: Homepage(),
      routes: {
        'login':(context)=>Login(),
        'singup':((context) => Singup()),
        'homepage':((context) => Test()),
        'home':(context) => Home()}
    );
  }
}
