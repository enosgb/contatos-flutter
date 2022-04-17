import 'dart:html';

import 'package:flutter/material.dart';
import 'package:untitled1/contatos/contatos.dart';
import 'package:untitled1/globais.dart';

import 'package:untitled1/lista.dart';
import 'package:untitled1/globais.dart';

void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHome()
    );
  }
}

class MyHome extends StatelessWidget {

  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerTelephone = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Cadastro de Contatos'),
        ),
        body:
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget> [

                Text("Nome"),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: TextField( controller: _controllerName,),
                ),

                Text("Telefone"),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child:
                  TextField( controller: _controllerTelephone,),
                ),

                Text("Email"),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: TextField( controller: _controllerEmail,),
                ),

                ElevatedButton(
                  child: Text('Cadastrar'),
                  onPressed: () {
                    final String name = _controllerName.text;
                    final String telephone = _controllerTelephone.text;
                    final String email = _controllerEmail.text;
                    final newContact = Contacts(name, telephone, email);
                    globalLista.add(newContact.toString());
                  },
                ),
                  ElevatedButton(
                    child: Text('Lista de Contatos'),
                    onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListaContatos()),
                    );
                    },
                  )
              ],
            ),
          ),
      ),
    );
  }
}