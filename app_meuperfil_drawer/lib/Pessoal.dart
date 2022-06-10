import 'package:flutter/material.dart';
 
class Pessoal extends StatelessWidget {
  const Pessoal({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _corpo(context),
    );
  }

  _corpo(BuildContext contex) {
    return Container(
      
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 65.0),
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        _foto(),
        _nome(),
        _idade(),
        _endereco(),
        _interesses(),
          ],
        ),
      ),
    );
  }

  _foto() {
    return Image.asset(
      "assets/images/perfil.jpg",
      height: 400,
      width: 400,
    );
  }

  _nome() {
    return Text(
      "Nome: Rafaela Brandão Mania Lima",
      style: TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic),
    );
  }

  _idade() {
    return Text(
      "Idade: 20 anos",
      style: TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic),
    );
  }

  _endereco() {
    return Text(
      "Endereço: Ocian - Praia Grande/SP",
      style: TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic),
    );
  }

  _interesses() {
    return Text(
      "Interesses: Livros, D&D, videogame..",
      style: TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic),
    );
  }

  
}
