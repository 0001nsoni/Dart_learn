import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  void moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate())
    {

    setState(() {
      changeButton = true;
    });

    await Future.delayed(Duration(seconds: 1));

   

    await Navigator.pushNamed(context, MyRoutes.homeRoute);

   

    setState(() {
      changeButton = false;
    });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/undraw_hey-by-basecamp_61xm.png",
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
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: "Enter username",
                          labelText: "Username",
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          border: OutlineInputBorder(),
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Username cannot be empty ";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          border: OutlineInputBorder(),
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Password cannot be empty ";
                          }
                          else if(value.length<6)
                          {
                            return "Password length should be atleast 6";
                          }
                          return null;
                        },
                        obscureText: true,
                      ),
                      SizedBox(height: 40.0),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                        child: InkWell(
                          
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeButton ? 50 : 150,
                            height: 50,
                            alignment: Alignment.center,
                            child: changeButton
                                ? Icon(Icons.done, color: Colors.white)
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
