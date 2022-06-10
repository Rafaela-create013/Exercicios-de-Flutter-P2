import 'package:flutter/material.dart';
 
class Formacao extends StatelessWidget {
  const Formacao({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _corpo(context),
    );
  }
 
  _titulo() {
    return AppBar(
      title: Text("Imagens"),
      centerTitle: true,
      backgroundColor: Colors.green,
    );
  }
 
 _corpo(BuildContext contex) {
  return SingleChildScrollView(
    child: Container(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 65.0),
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        color: Color.fromARGB(255, 255, 255, 255),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            _foto(),
            _etec(),
            _foto2(),
            _fatec(),
              ],
          ),
        ),
      ),
    );
  }

  _foto() {
    return Image.asset(
      "assets/images/etec.jpg",
      height: 300,
      width: 300,
      //fit: BoxFit.fill,
      //fit: BoxFit.contain,
      fit: BoxFit.cover,
    );
  }

  _etec() {
    return Text(
      "Formada como Técnica em desenvolvimento de sistemas",
      style: TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic),
    );
  }

    _foto2() {
    return Image.asset(
      "assets/images/fatec.jpg",
      height: 300,
      width: 300,
      //fit: BoxFit.fill,
      //fit: BoxFit.contain,
      fit: BoxFit.cover,
    );
  }

  _fatec() {
    return Text(
      "Cursando Analise e desenvolvimento de sistemas",
      style: TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic),
    );
  }
}
