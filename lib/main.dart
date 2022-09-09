import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning/view/login_page.dart';
import 'package:learning/view/main/latihan_soal/lesson_page.dart';
import 'package:learning/view/main/latihan_soal/lesson_set.dart';
import 'package:learning/view/register.dart';
import 'package:learning/view/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes:{
          "/":(context)=>const SplashPage(),
          "login":(context)=> LoginPage(),
          "register":(context)=> RegisterPage(),
          "lesson":(context)=>LessonPage(),
          "lesson_packages":(context)=>LessonPackage()
      }
    );
  }
}
