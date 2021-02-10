import 'package:cumidas/src/components/CardProduct.dart';
import 'package:cumidas/src/components/buscar.dart';
import 'package:cumidas/src/components/categorias.dart';
import 'package:cumidas/src/components/header.dart';
import 'package:cumidas/src/dados/produtosDados.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
  
class _HomePageState extends State<HomePage> {

  List<ProdutosD> _produtos = produtos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     /* appBar: AppBar(
        title: const Text("Página Inicial"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: (){},
          ),
           IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: (){},
          ),
        ],
      ),*/
      body: ListView(
        padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
        children: <Widget>[

          Header(),
          AreaCategoria(),
          Buscar(),

          SizedBox( height: 20.0,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Produtos Mais Vendidos",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Precionou");
                },
                child: Text(
                  "Ver Todos",
                  style: TextStyle(
                     color: const Color.fromARGB(255, 124, 25, 220),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0
                  )
                ),
              )
            ],
          ),
          SizedBox( height: 20.0,),
          Column(
            children: _produtos.map(_itensProduct).toList()
          ,)
        ],
      ),
    );
  }

  Widget _itensProduct(ProdutosD produtos){
    return Container(
      margin: EdgeInsets.only(
        bottom: 26.0
      ),
      child: CardProduct(
        id: produtos.id,
        nome: produtos.nome,
        image: produtos.image,
        categoria: produtos.categoria,
        valor: produtos.valor,
        desconto: produtos.desconto,
        avaliacoes: produtos.avaliacoes,
      ),
    );
  }
}
