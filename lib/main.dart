import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final int days = 20;
  final double weight = 70.2;
  final String name = "Neeraj";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.deepPurple),
        fontFamily: GoogleFonts.lato().fontFamily,
        // primaryTextTheme: GoogleFonts.latoTextTheme()
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.dark(
          primary: Colors.deepOrange,
          secondary: Colors.orangeAccent,
        ),
        appBarTheme: const AppBarTheme(backgroundColor: Colors.deepOrange),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) =>  LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(name: name, days: days, weight: weight),
        MyRoutes.loginRoute: (context) =>  LoginPage(),
      },
    );
  }
}
