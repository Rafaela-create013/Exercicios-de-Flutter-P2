import 'package:flutter/material.dart';
 
class Contato extends StatelessWidget {
  const Contato({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contato'),
      ),
      body: _body(context),
    );
  }
 
  _body(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Voltar'),
        onPressed: () => _onClickVoltar(context),
      ),
    );
  }
 
  _onClickVoltar(BuildContext context) {
    Navigator.pop(context, "Estou vindo da Tela Contato");
  }
}
