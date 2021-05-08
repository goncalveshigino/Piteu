import 'package:flutter/material.dart';

class Cabecalho extends StatelessWidget{
  final textoTitulo = TextStyle(fontSize: 17.0, fontWeight: FontWeight.w400);
  final textoSubtitulo = TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300);

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(children: <Widget>
        [
          Text("O que você deseja Comer?", style: textoTitulo),
          Text("Temos diversas opções", style: textoSubtitulo),

        ],
        ),
        Icon(Icons.notifications),

      ],
    );
  }
}