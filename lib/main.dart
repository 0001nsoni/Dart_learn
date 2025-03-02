import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 20;
    double weight = 70.2;
    String name = "Neeraj";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(name: name, days: days, weight: weight), // Passing values
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple, 
        appBarTheme: AppBarTheme(backgroundColor: Colors.deepPurple), // Fix AppBar color
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepOrange,
        appBarTheme: AppBarTheme(backgroundColor: Colors.deepOrange), // Fix AppBar color in dark mode
      ),
      initialRoute: "/home",
      routes: {
        "/":(context)=>LoginPage(),
         "/home":(context)=>HomePage(name: name, days: days, weight: weight),
        "/login":(context)=>LoginPage()
      },
    );
  }
}
