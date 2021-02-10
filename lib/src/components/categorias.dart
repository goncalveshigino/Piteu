import 'package:cumidas/src/dados/categoriasDados.dart';
import 'package:cumidas/src/models/categoriasModel.dart';
import 'package:flutter/material.dart';

import 'cardCategorias.dart';

class AreaCategoria extends StatelessWidget {
  final List<CategoriasModel> _categorias = categorias;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      margin: EdgeInsets.only(top: 10.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categorias.length,
        itemBuilder: (BuildContext context, int index) {
          return CardCategoria(
            nomeCat: _categorias[index].nomeCat,
            totalProd: _categorias[index].totalProd,
            imgCat: _categorias[index].imgCat,
          );
        },
      ),
    );
  }
}
