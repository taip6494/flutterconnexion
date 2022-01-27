import 'package:flutter/material.dart';
import 'package:flutterconnexion/modules/login.dart';
import 'package:flutterconnexion/modules/oublier.dart';
import 'package:flutterconnexion/modules/acceuil.dart';

void main() {
  runApp(connexion());
}

class connexion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page de Connexion',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          children: [
            //partie Logo et Text
            Form(
              key: _formkey,
              child: Column(
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
                    'Connexion',
                    style: TextStyle(fontSize: 25, color: Colors.purple),
                  ),
                ],
              ),
            ),
            //Fin Logo et text
            //Debut Champ de texte
            SizedBox(
              height: 60.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "Adresse mail",
                  labelStyle: TextStyle(fontSize: 20, color: Colors.purple)),
              validator: (value) {
                if (value!.isEmpty ||
                    !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                        .hasMatch(value)) {
                  return "Entrer une adresse mail correct";
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
            Column(
              children: [
                ButtonTheme(
                  child: ElevatedButton(
                    child: Text(
                      'Connexion',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyApp()));
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
                      'Inscription',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => inscription()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                ButtonTheme(
                  child: TextButton(
                    child: Text(
                      'Mot de passe oublié ?',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white54,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => oublier()));
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
