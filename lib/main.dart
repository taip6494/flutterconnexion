import 'package:flutter/material.dart';
import 'package:flutterconnexion/modules/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
                  'Connexion',
                  style: TextStyle(fontSize: 25, color: Colors.purple),
                ),
              ],
            ),
            //Fin Logo et text
            //Debut Champ de texte
            SizedBox(
              height: 60.0,
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
