import 'package:cumidas/src/pages/TelaInicial.dart';
import 'package:cumidas/src/pages/carrinhoPage.dart';
import 'package:cumidas/src/pages/categoriasPage.dart';
import 'package:cumidas/src/pages/produtosPage.dart';
import 'package:flutter/material.dart';


class Tabs extends StatefulWidget{
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs>{
  int abaAtual = 0;
  TelaInicial telaInicial;
  carrinhoPage carrinho;
  produtosPage produtos;
  categoriasPage categorias;

  List<Widget> pages;
  Widget pagAtual;


  @override
  void initState(){
    telaInicial = TelaInicial();
    carrinho = carrinhoPage();
    produtos = produtosPage();
    categorias = categoriasPage();

    pages = [telaInicial, carrinho, produtos, categorias];
    pagAtual = telaInicial;
    super.initState();
  }


@override
  Widget build(BuildContext context){
    return SafeArea(
      child:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          title:Text(
            abaAtual == 0
                ? "Página Inicial"
                : abaAtual == 1
                  ? "Carrinho"
                  : abaAtual == 2 ? "Produtos" : "Categorias",
            style:TextStyle(
                color:Colors.white,
                fontSize:15.0,
                fontWeight: FontWeight.bold
               ),

          ),
          centerTitle: true,

          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.notifications_none,
                  // size: 30.0,
                  color: Colors.white,
                ),
                onPressed: () {}),
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {},
            )
          ],

        ),


        //COLOCAR DRAWER

        resizeToAvoidBottomPadding: false,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: abaAtual,
          onTap: (index) {
            setState(() {
              abaAtual = index;
              pagAtual = pages[index];
            });
          },
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              // ignore: deprecated_member_use
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
              // ignore: deprecated_member_use
              title: Text("Carrinho"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.photo_library,
              ),
              title: Text("Produtos"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
              ),
              title: Text("Categoria"),
            ),
          ],
        ),


        //TRAZER O CONTEÚDO DA PÁGINA INICIAL HOME
        body:pagAtual,


      )
    );
}


}