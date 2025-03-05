import "package:flutter/material.dart";
import "package:flutter_application_1/widgets/drawer.dart";

class HomePage extends StatelessWidget {
  final String name;
  final int days;
  final double weight;

  // Constructor to accept values from MyApp
  const HomePage({super.key, required this.name, required this.days, required this.weight});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        title: Text("Neeraj First App"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16), // Add some padding for better UI
          child: Text(
            "Hello guys, this is $name Soni. Age = $days, Weight = $weight",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Improved text style
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
