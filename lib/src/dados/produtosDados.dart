import '../models/produtosModel.dart';


class ProdutosD {

  final String id;
  final String nome;
  final String image;
  final String categoria;
  final double valor;
  final double desconto;
  final double avaliacoes;

  const ProdutosD(
      {
        this.id,
        this.nome,
        this.image,
        this.categoria,
        this.valor,
        this.desconto,
        this.avaliacoes
      });

  }


final produtos = [

  ProdutosD(
    
     id : "1", 
     nome : "Sanduiche Carne",
     image : "assets/images/01.png",
     categoria: "Sanduiches",
     valor: 50, 
     desconto: 3,
     avaliacoes:5
     ),

  ProdutosD(
    
     id : "2", 
     nome : "Pizza",
     image : "assets/images/02.png",
     categoria: "Pizzas",
     valor: 50, 
     desconto: 3,
     avaliacoes:5
     ),

  ProdutosD(
    
     id : "3", 
     nome : "Salada Frutas",
     image : "assets/images/03.png",
     categoria: "Frutas",
     valor: 50, 
     desconto: 3,
     avaliacoes:5
     )

];
