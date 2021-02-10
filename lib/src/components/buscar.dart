import 'package:flutter/material.dart';

class Buscar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        //elevation: 0.25,
      child: TextField(
        style: TextStyle(color: Colors.black, fontSize: 16.0),
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
  
          contentPadding: EdgeInsets.symmetric( horizontal: 32.0, vertical: 14.0),
          suffixIcon: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Material(
              color: Colors.transparent,
             // elevation: 0.25,
              child: InkWell(
                onTap: () {
                  
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(
                  Icons.search,
                  color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          hintText: "Buscar Produtos"
        ),
      ),
    );
  }
}