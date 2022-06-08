import 'package:flutter/material.dart';
import 'Sobre.dart';
 
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
 
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
 
  _titulo() {
    return AppBar(
      title: Text("Home"),
      centerTitle: true,
      backgroundColor: Colors.green,
    );
  }
 
  _corpo(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _botao(context, 'Ir para Tela Sobre'),
            _texto(),
          ],
        ),
      ),
    );
  }
 
  _texto() {
    return Text(
      'Tela Home',
      style: TextStyle(
          color: Colors.blue,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          decorationColor: Colors.red,
          decorationStyle: TextDecorationStyle.wavy),
    );
  }
 
  _botao(BuildContext context, String textoBotao) {
    return RaisedButton(
        color: Colors.green,
        child: Text(
          textoBotao,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        onPressed: () {
          _onClickOutraTela(context);
        });
  }
 
  _onClickOutraTela(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return Sobre();
      }),
    );
  }
}
