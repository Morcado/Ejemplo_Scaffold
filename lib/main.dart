// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Holaaaaaa',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Jabba the jutt'),
        ),
        body: Botones(),
        drawer: Menu(),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Animales'),
            decoration: BoxDecoration(
              color: Colors.cyan,
            ),
          ),
          ListTile(
            title: Text('Perrito'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Gatito'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Ratoncito'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Conejito'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

}

class Botones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center( // Solo puede tener un hijo
        child: Column( // Permite tener muchos hijos
            children: <Widget>[ //Hijos de la columna
              RaisedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    // Se cre auna variable snackbar
                    content: Text("Una barrita Leal(X, Y) :- Leal(X, Y) :- Leal(X, Y) :- Leal(X, Y) :- Leal(X, Y) :- Leal(X, Y) :- "),
                    action: SnackBarAction(
                      label: "Deshacer",
                      onPressed: () {},
                    ),
                  );

                  Scaffold.of(context).showSnackBar(snackBar);
                },
                child: Text("Siiiiiiiiiiiiiiiiiiiii"),
              ),
              RaisedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    // Se cre auna variable snackbar
                    content: Text("Una barrita Leal "),
                    action: SnackBarAction(
                      label: "Deshacer",
                      onPressed: () {},
                    ),
                  );

                  Scaffold.of(context).showSnackBar(snackBar);
                },
                child: Text("Noooooooooooooooooooooooo"),
              ),
              RaisedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    // Se cre auna variable snackbar
                    content: Text("Una barrita Leal:- "),
                    action: SnackBarAction(
                      label: "Deshacer",
                      onPressed: () {},
                    ),
                  );

                  Scaffold.of(context).showSnackBar(snackBar);
                },
                child: Text("aaaaaaaaaaaaaaaa"),
              )
            ]
        )
    );
  }
}