import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController alcoolController = TextEditingController();
  TextEditingController gasolinaController = TextEditingController();

  String infoResultado = "";

  void _calcularValor() {
    setState(() {
      double alcool = double.parse(alcoolController.text);
      double gasolina = double.parse(gasolinaController.text);

      double resultado = alcool / gasolina;
      if(resultado > 0.7){
        infoResultado = 'A gasolina esta mais em conta!';
      }else{
        infoResultado = 'O alcool esta mais em conta!';
      }

      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Colors.white,
      body: _corpo(),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Alcool ou gasolina?"),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 10, 50, 182),
    );
  }

  _corpo() {
    var children2 = <Widget>[
          _foto(),
          _campo("Preço do alcool", alcoolController),
          _campo("Preço da gasolina", gasolinaController),
          _botao(),
          _texto(infoResultado),
        ];
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: children2,
      ),
    );
  }

  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitulo,
          labelStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
      textAlign: TextAlign.center,
      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 25.0),
      controller: objController,
    );
  }

  _botao() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _calcularValor,
          child: Text("Verificar",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Color.fromARGB(255, 6, 170, 6),
        ),
      ),
    );
  }

  _texto(textoParaExibir) {
    return Text(
      textoParaExibir,
      textAlign: TextAlign.center,
      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 25.0),
    );
  }
}
  _foto() {
    return Image.asset(
      "assets/images/governadores-gasolina.jpg",
      //alterando o tamanho da imagem
      height: 300,
      width: 300,
      //alterando o fit pra ajustar imagem
      //BoxFit.fill - Estica a imagem para obedecer a largura e altura definida
      //BoxFit.contain - Define o melhor tamanho para imagem dentro da largura e altura definidas
      //BoxFit.cover - Recorta a imagem obedecendo a largura e altura definida (não destorcendo) 
    );
  }


