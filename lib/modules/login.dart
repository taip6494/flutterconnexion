import 'package:flutter/material.dart';
import 'package:flutterconnexion/main.dart';

void main() {
  runApp(inscription());
}

class inscription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Page d'inscription",
      home: Inscription(),
    );
  }
}

class Inscription extends StatefulWidget {
  @override
  _Inscription createState() => _Inscription();
}

class _Inscription extends State<Inscription> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      body: SafeArea(
        child: Form(
          key: _formkey,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            children: [
              //partie Logo et Text
              Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Image.asset(
                    'assets/logo.png',
                    width: 200,
                    height: 200,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Inscription',
                    style: TextStyle(fontSize: 25, color: Colors.purple),
                  ),
                ],
              ),
              //Fin Logo et text
              //Debut Champ de texte
              SizedBox(
                height: 40.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Votre Pseudo",
                    labelStyle: TextStyle(fontSize: 20, color: Colors.purple)),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                    return "Le Pseudo est valide";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Adresse mail",
                    labelStyle: TextStyle(fontSize: 20, color: Colors.purple)),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                          .hasMatch(value)) {
                    return "Enter Correct Email Address";
                  } else {
                    return null;
                  }
                },
              ),

              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Votre mot de passe",
                    labelStyle: TextStyle(fontSize: 20, color: Colors.purple)),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                          .hasMatch(value)) {
                    return 'Entrer un mot de passe avec des caractéres spéciaux majuscule et nombres';
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Retapez votre mot de passe",
                    labelStyle: TextStyle(fontSize: 20, color: Colors.purple)),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                          .hasMatch(value)) {
                    return 'Entrer un mot de passe avec des caractéres spéciaux majuscule et nombres';
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              Column(
                children: [
                  ButtonTheme(
                    child: ElevatedButton(
                      child: Text(
                        "S'enregistrer",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => connexion()));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple, // background (button) color
                        onPrimary: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ButtonTheme(
                    child: TextButton(
                      child: Text(
                        '<- connexion',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => connexion()));
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
