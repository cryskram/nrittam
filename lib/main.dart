import 'package:flutter/material.dart';
import 'package:nrittam/screens/form.dart';
import 'package:nrittam/screens/home.dart';
import 'package:nrittam/screens/login.dart';
import 'package:nrittam/screens/onboarding.dart';
import 'package:nrittam/screens/register.dart';
import 'package:nrittam/screens/results.dart';
import 'package:nrittam/screens/role.dart';
import 'package:nrittam/screens/student.dart';
import 'package:nrittam/screens/teacher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nrittam",
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (_) => OnBoardingScreen(),
        "/register": (_) => RegisterScreen(),
        "/login": (_) => LoginScreen(),
        "/home": (_) => HomeScreen(),
        "/form": (_) => FormSpecificScreen(),
        "/result": (_) => ResultScreen(),
        "/role": (_) => RoleSelectScreen(),
        "/student": (_) => StudentScreen(),
        "/teacher": (_) => TeacherScreen(),
      },
    );
  }
}
