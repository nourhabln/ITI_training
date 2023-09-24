import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void navigateToLoginScreen() {
    Navigator.pop(context, RegisteredData(
      username: _usernameController.text,
      password: _passwordController.text,
    ));
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
                                "Register",
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
                              MaterialButton(
                                color: Colors.orange.shade500,
                                onPressed: navigateToLoginScreen,
                                child: Text(
                                  'Register',
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

class RegisteredData {
  final String username;
  final String password;

  RegisteredData({required this.username, required this.password});
}