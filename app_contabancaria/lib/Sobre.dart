import 'package:flutter/material.dart';
import 'Home.dart';
 
class Sobre extends StatelessWidget {
  
  String valueNome;
  String valueIdade;
  Sobre({required this.valueNome, required this.valueIdade});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        backgroundColor: Colors.white,
        body: _corpo(context),
      ),
    );
  }

//titulo do app
  _titulo() {
    return AppBar(
      title: Text("Dados informados"),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 2, 76, 78),
    );
  }
//corpo do app (conteudo)
  _corpo(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           _Nome(),
           _Idade(),
          ],
        ),
      ),
    );
  }

  _Nome() {
    return Container(
      child: Text(
        valueNome,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
      ),
    );
 }

 _Idade() {
    return Container(
      child: Text(
        valueIdade,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
      ),
    );
 }
}