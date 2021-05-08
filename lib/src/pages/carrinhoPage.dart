import 'package:cumidas/src/componentes/cardCarrinho.dart';
import 'package:cumidas/src/pages/loginPage.dart';
import 'package:flutter/material.dart';


class carrinhoPage extends StatefulWidget{
  @override
  _carrinhoPageState createState() => _carrinhoPageState();
}

class _carrinhoPageState extends State<carrinhoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:ListView(
        padding:EdgeInsets.symmetric(horizontal:10.0),
        scrollDirection: Axis.vertical,
        children:<Widget>[
          CardCarrinho(),
          CardCarrinho(),
          CardCarrinho(),
        ]

      ),


        bottomNavigationBar: _TotalContainer(),
    );
  }



  Widget _TotalContainer() {
    return Container(

      height: 185.0,
      padding: EdgeInsets.only(
        left: 10.0,
        right: 10.0,
      ),
      margin: EdgeInsets.only(
        top: 30.0,
        ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Subtotal",
                style: TextStyle(
                    color: Color(0xFF9BA7C6),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "23,00",
                style: TextStyle(
                    color: Color(0xFF6C6D6D),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),

          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Taxa de Entrega",
                style: TextStyle(
                    color: Color(0xFF9BA7C6),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "3,00",
                style: TextStyle(
                    color: Color(0xFF6C6D6D),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Divider(
            height: 2.0,
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Total",
                style: TextStyle(
                    color: Color(0xFF9BA7C6),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "26,00",
                style: TextStyle(
                    color: Color(0xFF6C6D6D),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
            },
            child: Container(
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text(
                  "Finalizar Pagamento",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }

}