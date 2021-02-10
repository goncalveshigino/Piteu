import 'package:flutter/material.dart';

import 'components/card_car.dart';

class CardPage extends StatefulWidget {
  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
       body: ListView(
         padding: EdgeInsets.symmetric(horizontal: 10.0),
         scrollDirection: Axis.vertical,

         children: <Widget>[
             CardCar(),
             CardCar(),
             CardCar(),
             CardCar(),
         ],
       ),
    );
  }
}