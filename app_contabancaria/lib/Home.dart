import 'package:flutter/material.dart';
import 'Sobre.dart';
 
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

   @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController idadeController = TextEditingController();

    String nome = "";
    String idade = "";

  void _salvaDados() {
    setState(() {
      
      String nome = nomeController.text;
      String idade = idadeController.text;

      nome = "Seu nome é: $nome";
      idade = "Sua idade é: $idade";

    });
  }
 
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
      title: Text("Abra sua conta bancária!"),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 2, 76, 78),
    );
  }
 
  _corpo(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _campo("Nome:", nomeController),
            _campo("Idade:", idadeController),
            _botao(context, 'Confirmar dados'),
          ],
        ),
      ),
    );
  }
 

  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.text,
      decoration:
          InputDecoration(border: InputBorder.none,
          icon: Icon(Icons.person),
          hintText: 'Informe o nome'),
      style: TextStyle(color: Colors.green, fontSize: 20.0),
      controller: objController,
    );
  }

  _botao(BuildContext context, String textoBotao) {
    return RaisedButton(
        color: Color.fromARGB(255, 3, 75, 6),
        child: Text(
          textoBotao,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        onPressed: () {
          _salvaDados();
          _onClickOutraTela(context);
        });
  }
 
  _onClickOutraTela(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
        return Sobre(valueNome: nome, valueIdade: idade);
      }),
    );
  }
}