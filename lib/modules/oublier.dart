import 'package:flutter/material.dart';
import 'package:flutterconnexion/modules/login.dart';
import 'package:flutterconnexion/main.dart';

void main() {
  runApp(oublier());
}

class oublier extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page de Connexion',
      home: OublierPage(),
    );
  }
}

class OublierPage extends StatefulWidget {
  @override
  _OublierPage createState() => _OublierPage();
}

class _OublierPage extends State<OublierPage> {
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
                  height: 40,
                ),
                Image.asset(
                  'assets/inter.png',
                  width: 200,
                  height: 200,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Mot de passe oublier ?',
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
            Column(
              children: [
                ButtonTheme(
                  child: ElevatedButton(
                    child: Text(
                      'Reinitialiser le mot de passe',
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
                      '<- connexion',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => connexion()));
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
