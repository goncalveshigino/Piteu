

class ProdutosModel{
  final String id;
  final String nome;
  final String imagem;
  final String categoria;
  final double valor;
  final double desconto;
  final double avaliacoes;

  ProdutosModel(
      {this.id,
        this.nome,
        this.imagem,
        this.categoria,
        this.valor,
        this.desconto,
        this.avaliacoes});

}



final produtos = [
ProdutosModel(
id:  "1",
nome:  "Sanduíche Carne",
imagem:  "assets/imagens/01.png",
categoria: "Sanduíches",
valor: 50,
desconto: 3,
avaliacoes: 5
),


ProdutosModel(
id:  "2",
nome:  "Pizza Calabresa",
imagem:  "assets/imagens/02.png",
categoria: "Pizza",
valor: 40,
desconto: 3,
avaliacoes: 5
),

];