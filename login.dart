import 'package:flutter/material.dart';
import 'home.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Login"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => HomeScreen()),
            );
          },
        ),
      ),
    );
  }
}
