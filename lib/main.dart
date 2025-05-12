import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/splash.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:flutter_application_1/screens/forgotpassword.dart';
import 'package:flutter_application_1/screens/login.dart';
import 'package:flutter_application_1/screens/register.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,);
 runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Start Button App",
      initialRoute: '/',
      routes: {
        '/':(context)=>HomeScreen(),
        '/login':(context)=>Login(),
        '/register':(context)=>Register(),
        '/log':(context)=>Dashboard(),
        
      },
    );
  }
}

