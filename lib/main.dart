import 'package:firstpractice/login.dart';
import 'package:firstpractice/routers.dart';
import 'package:firstpractice/signup.dart';
import 'package:firstpractice/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      onGenerateRoute: (settings) {
       return Routers.onGenerateRoute(settings);
      },
      );
  }
}