import 'package:flutter/material.dart';
import 'package:flutter_application_1/app.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/register.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Start Button App",
      initialRoute: '/',
      routes: {
        '/':(context)=>HomeScreen(),
        '/login':(context)=>Login(),
        '/register':(context)=>Register()
      },
    );
  }
}

