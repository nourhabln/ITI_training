
import 'package:flutter/material.dart';
import 'package:untitled6/Log/register.dart';

import '../Project//home.dart';

class loginScreen extends StatefulWidget {
  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  String registeredUsername = 'example'; // Replace with the registered username
  String registeredPassword = 'password'; // Replace with the registered password

  // Function to navigate to the register screen
  void navigateToRegisterScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegisterScreen()),
    ).then((value) {
      // This code will execute when the RegisterScreen is popped and returns a value
      if (value != null) {
        // If a value is returned, update the username and password fields with the registered data
        setState(() {
          _usernameController.text = value.username;
          _passwordController.text = value.password;
          registeredUsername = value.username;
          registeredPassword = value.password;
        });
      }
    });
  }

  // Function to navigate to the home screen
  void navigateToHomeScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Home()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('pack.jpg'),
                Padding(
                  padding: const EdgeInsets.only(top: 140),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.orange.shade200,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        width: 500,
                        height: 500,
                        child: Padding(
                          padding: const EdgeInsets.all(50),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 85,
                              ),
                              Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 20),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: TextFormField(
                                  controller: _usernameController,
                                  decoration: InputDecoration(
                                    hintText: 'Username',
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: TextFormField(
                                  controller: _passwordController,
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
                                  obscureText: true,
                                ),
                              ),
                              SizedBox(height: 20),
                              TextButton(
                                onPressed: navigateToRegisterScreen,
                                child: Text(
                                  "Create an Account",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              MaterialButton(
                                color: Colors.orange.shade500,
                                onPressed: () {
                                  String username = _usernameController.text;
                                  String password = _passwordController.text;
                                  if (username == registeredUsername &&
                                      password == registeredPassword) {
                                    navigateToHomeScreen();
                                  } else {
                                    // Show an error message or perform other actions for invalid login credentials
                                  }
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
