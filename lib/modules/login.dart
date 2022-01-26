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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          children: [
            //partie Logo et Text
            Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Image.asset('assets/logo.png'),
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
            TextField(
              decoration: InputDecoration(
                labelText: "Pseudo",
                labelStyle: TextStyle(fontSize: 20, color: Colors.purple),
                filled: true,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(fontSize: 20, color: Colors.purple),
                filled: true,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              //Pour cacher le mot de passe
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Mot de passe",
                labelStyle: TextStyle(fontSize: 20, color: Colors.purple),
                filled: true,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              //Pour cacher le mot de passe
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Retapez votre mot de passe",
                labelStyle: TextStyle(fontSize: 20, color: Colors.purple),
                filled: true,
              ),
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
                    onPressed: () {},
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
                      'retour a la page connexion',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyApp()));
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
                    onPressed: () {},
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
