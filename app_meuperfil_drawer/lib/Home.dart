import 'package:app_meuperfil_drawer/Formacao.dart';
import 'package:app_meuperfil_drawer/Pessoal.dart';
import 'package:flutter/material.dart';
import 'Experiencia.dart';
import 'Pessoal.dart';
 
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
 
  @override
  _HomeState createState() => _HomeState();
}
 
class _HomeState extends State<Home> {
  int _currentPage = 0;
 
  final telas = [
    Center(child: Text('')),
    Pessoal(),
    Formacao(),
    Experiencia(),
  ];
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        backgroundColor: Colors.white,
        body: telas[_currentPage],
        drawer: Drawer(
            child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Rafaela Brandão Mania Lima'),
              accountEmail: Text('rafaelamanialima@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/perfil.jpg'),
                //backgroundImage: NetworkImage(
                    //'https://cdn1.vectorstock.com/i/1000x1000/23/70/man-avatar-icon-flat-vector-19152370.jpg'),
              ),
            ),
            ListTile(
              //leading: Icon(Icons.star),
              title: Text('Home'),
              subtitle: Text('Tela inicial do App'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                setState(() {
                  _currentPage = 0;
                });
              },
            ),
            ListTile(
              //leading: Icon(Icons.star),
              title: Text('Pessoal'),
              subtitle: Text('Minhas informações pessoais'),
              trailing: Icon(Icons.account_box_outlined),
              onTap: () {
                setState(() {
                  _currentPage = 1;
                });
              },
            ),
            ListTile(
              //leading: Icon(Icons.star),
              title: Text('Formação'),
              subtitle: Text('Minha formação acadêmica'),
              trailing: Icon(Icons.school_outlined),
              onTap: () {
                setState(() {
                  _currentPage = 2;
                });
              },
            ),
            ListTile(
              //leading: Icon(Icons.star),
              title: Text('Experiencias'),
              subtitle: Text('Minhas experiências profissionais'),
              trailing: Icon(Icons.contact_mail_outlined),
              onTap: () {
                setState(() {
                  _currentPage = 3;
                });
              },
            ),
          ],
        )),
      ),
    );
  }
 
  _titulo() {
    return AppBar(
      title: Text("Meu perfil"),
      centerTitle: true,
      backgroundColor: Color.fromRGBO(73, 7, 134, 1),
    );
  }
}
