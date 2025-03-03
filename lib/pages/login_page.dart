import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changeButton=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/undraw_secure-login_m11a.png",
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20.0),
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                    onChanged:(value)
                    {
                      name=value;
                      setState(() {
                        
                      });
                    } ,
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username",
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      border: OutlineInputBorder(),
                      
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 40.0),
                  InkWell(
                    onTap:()
                    async {
                      setState(() {
                        changeButton=true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                      
                    } ,
                  child:AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton?50: 150,
                    height: 50,
                    
                    alignment: Alignment.center,
                    child: changeButton?Icon(Icons.done,color:Colors.white): Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                    decoration:BoxDecoration(
                      color: Colors.deepPurple,
                      // shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                      
                      borderRadius: BorderRadius.circular(changeButton?50:8)
                      ) ,
                  ),
                  ),
                  // ElevatedButton( 
                  //   child:Text("Login"),
                  //   style: TextButton.styleFrom(minimumSize: Size(150,40)),
                  //   onPressed:(){
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   ),
                ],
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
