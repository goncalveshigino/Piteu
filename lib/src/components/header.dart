import 'package:flutter/material.dart';

class Header extends StatelessWidget {

  final textTitulo = TextStyle(fontSize: 17.0, fontWeight: FontWeight.w400);
  final textSubtitulo = TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          children: <Widget>[
            
            Text("O que você deseja Comer?",style: textTitulo,),
            Text("Temos diversas opções", style: textSubtitulo,)
          ],
        ),
        Icon(Icons.notifications)
      ],
    );
  }
}