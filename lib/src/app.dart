import 'package:cumidas/src/tabs/tabs.dart';
import 'package:flutter/material.dart';
import 'pages/TelaInicial.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:"Aplicativo Flutter",
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: Tabs(),
    );
  }
}