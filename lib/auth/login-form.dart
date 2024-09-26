import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class LoginForm extends StatefulWidget {
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var _formKey = GlobalKey<FormState>();
  bool isRemember = false;
  String email = "";

  void onSubmit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Navigator.pushReplacementNamed(context, "/tweet-list", arguments: email);
      //si tout est bon j'affiche ma popup
      displaySuccessDialog();
    }
  }

  void displaySuccessDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Connexion !"),
            content: Text("Vous êtes connectés avec succès !"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("OK"))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("Connexion à Y"),
              TextFormField(
                onSaved: (value) {
                  email = value!;
                },
                decoration: InputDecoration(labelText: "Email"),
                validator: (value) {
                  if (value == null || !EmailValidator.validate(value)) {
                    return "Veuillez entrer un email valide !";
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Mot de passe"),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.length < 1) {
                    return "Le champs ne peut être vide !";
                  }
                  return null;
                },
              ),
              SwitchListTile(
                  value: isRemember,
                  onChanged: (value) {
                    setState(() {
                      isRemember = value;
                    });
                  },
                  title: Text("Se souvenir de moi !")),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onSubmit,
                  child:
                      Text("Connexion", style: TextStyle(color: Colors.white)),
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.blue)),
                ),
              )
            ],
          ),
        ));
  }
}
