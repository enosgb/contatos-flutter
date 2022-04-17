import 'package:flutter/material.dart';
import 'package:untitled1/contatos/contatos.dart';
import 'package:untitled1/globais.dart';
import 'package:untitled1/main.dart';
import 'package:untitled1/globais.dart';

class ListaContatos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Contatos"),
      ),
      body:
      Center(
        child: Column(
          children: <Widget> [
            Text("Contatos",style: TextStyle(fontSize: 26)),
            Text(globalLista.toString(),
                style: TextStyle(fontSize: 18,fontStyle: FontStyle.italic)),
          ],
        ),
      ),
    );
  }
}
