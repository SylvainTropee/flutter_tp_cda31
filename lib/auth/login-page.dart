import 'package:flutter/material.dart';
import 'package:y/auth/login-form.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Connexion"), backgroundColor: Colors.blue),
      body: LoginForm(),
    );
  }
}
