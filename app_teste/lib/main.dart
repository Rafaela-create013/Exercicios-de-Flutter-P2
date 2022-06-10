import 'package:flutter/material.dart';
 
void main() {
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        backgroundColor: Colors.white,
        body: _corpo(),
      ),
    );
  }
 
  _titulo() {
    return AppBar(
      title: Text("Imagens"),
      centerTitle: true,
      backgroundColor: Colors.green,
    );
  }
 
  _corpo() {
    return Container(
      child: ListView(
        children: <Widget>[
          _foto('perfil.jpg'),
          _foto('perfil.jpg'),
          _foto('perfil.jpg'),
          _foto('perfil.jpg'),
          _foto('perfil.jpg'),
        ],
      ),
    );
  }
 
  _foto(String nomeFoto) {
    return Image.asset(
      "assets/images/$nomeFoto",
      height: 300,
      width: 300,
      //fit: BoxFit.fill,
      //fit: BoxFit.contain,
      fit: BoxFit.cover,
    );
  }
}
