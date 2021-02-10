import 'package:cumidas/src/pages/card/card_page.dart';
import 'package:cumidas/src/pages/category/category_page.dart';
import 'package:cumidas/src/pages/home/home_page.dart';
import 'package:cumidas/src/pages/product/product_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int abaAtual = 0;

  HomePage homePage;
  CardPage cardPage;
  ProductPage productPage;
  CategoryPage categoryPage;

  List<Widget> pages;
  Widget pagActual;

  @override
  void initState() {
    homePage = HomePage();
    cardPage = CardPage();
    productPage = ProductPage();
    categoryPage = CategoryPage();

    pages = [homePage, cardPage, productPage, categoryPage];
    pagActual = homePage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 124, 25, 120),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          title:  Text(

            abaAtual == 0 ? "Página Inicial"
              : abaAtual == 1 ? "Carrinho"
              : abaAtual == 2 ? "Produtos" : "Categorias",

            style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold
            ), 
          ),
          centerTitle: true,
          actions: <Widget>[
             IconButton(
                icon: Icon(
                Icons.notifications_none,
                color: Colors.white,
              ),
              onPressed: (){

              },
             ),
             IconButton(
                icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ),
              onPressed: (){
                
              },
             )
          ],
        ),

        //Add drawer

       resizeToAvoidBottomPadding: false,
       bottomNavigationBar: BottomNavigationBar(
         currentIndex: abaAtual,
         onTap: (index){
           setState(() {
             abaAtual = index;
             pagActual = pages[index];
           });
         },
         type: BottomNavigationBarType.fixed,
         items: <BottomNavigationBarItem>[

              BottomNavigationBarItem(
                  icon: Icon(Icons.home,),
                  title: const Text("Home")
              ),

              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined,),
                  title: const Text("Card")
              ),

              BottomNavigationBarItem(
                  icon: Icon(Icons.precision_manufacturing_sharp,),
                  title: const Text("Product")
              ),

              BottomNavigationBarItem(
                  icon: Icon(Icons.list,),
                  title: const Text("Category")
              ),
         ],
       ),


            //TRAZER O CONTEUDO DA HOME PAGE
         body: pagActual,
      ),
    );
  }
}
