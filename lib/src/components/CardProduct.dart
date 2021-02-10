import 'package:flutter/material.dart';

class CardProduct extends StatefulWidget {

  final String id;
  final String nome;
  final String image;
  final String categoria;
  final double valor;
  final double desconto;
  final double avaliacoes;

  const CardProduct(
    {
     this.id, 
     this.nome,
     this.image,
     this.categoria,
     this.valor, 
     this.desconto,
     this.avaliacoes
     });

     
  @override
  _CardProductState createState() => _CardProductState();
}

class _CardProductState extends State<CardProduct> {

  var cardText = TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      child: Stack(
        children: <Widget>[
          Container(
           height: 230.0,
           width: 340.0,
             child: Image(
          image: AssetImage(
          widget.image
          ),
          fit:BoxFit.cover
         ),
         ),
    Positioned(
          left: 0.0,
          bottom: 0.0,
          width: 340.0,
          height: 60.0,
          child: Container(
          decoration: BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [Colors.black, Colors.black12])),
          ),
         ),
          Positioned(
            left: 10.0,
            bottom: 10.0,
            right: 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.nome,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Theme.of(context).primaryColor,
                            size: 16.0,
                          ),
                             Icon(
                            Icons.star,
                            color: Theme.of(context).primaryColor,
                            size: 16.0,
                          ),
                             Icon(
                            Icons.star,
                            color: Theme.of(context).primaryColor,
                            size: 16.0,
                          ),
                          SizedBox( width: 10.0,),
                          Text(
                            "(" + widget.avaliacoes.toString() + "Avalicao)",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      widget.valor.toString(),
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                    Text(
                      "Add",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      )
    );
  }
}