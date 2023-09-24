import 'package:flutter/material.dart';

class ASignup extends StatelessWidget {
  final String email;
  ASignup({required this.email});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('view data'),
      ),
      body: Center(
        child: Text('Email :$email '),
      ),
    );
  }
}
