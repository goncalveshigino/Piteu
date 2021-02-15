import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  final String btnText;

  const Button({this.btnText}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
       height: 50.0,
       decoration: BoxDecoration(
         color: Theme.of(context).primaryColor,
         borderRadius: BorderRadius.circular(10.0)),
         child: Center(
           child: Text(
             "$btnText",
             style: TextStyle(
               color:Colors.white,
               fontSize: 18.0,
               fontWeight: FontWeight.bold 
             ),
           ),
         ),
    );
  }
}