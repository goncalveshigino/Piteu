import 'package:cumidas/src/componentes/botao.dart';
import 'package:flutter/material.dart';

import 'loginPage.dart';


class cadastroPage extends StatefulWidget {
  @override
  _cadastroPageState createState() => _cadastroPageState();
}

class _cadastroPageState extends State<cadastroPage> {
  bool _toggleVisibility = true;

  String _email;
  String _nome;
  String _senha;
  // String _confirmPassword;

  GlobalKey<FormState> _formKey = GlobalKey();

  Widget _emailtxt() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Email",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
      ),
      onSaved: (String email) {
        _email = email;
      },
      validator: (String email) {
        String errorMessage;
        if (!email.contains("@")) {
          errorMessage = "Seu email está incorreto";
        }
        if (email.isEmpty) {
          errorMessage = "O campo email é requerido";
        }

        return errorMessage;
      },
    );
  }

  Widget _nometxt() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Nome",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
      ),
      onSaved: (String username) {
        _nome = username.trim();
      },
      validator: (String username) {
        String errorMessage;
        if (username.isEmpty) {
          errorMessage = "O nome é requerido";
        }
        // if(username.length > 8 ){
        //   errorMessage = "Your username is too short";
        // }
        return errorMessage;
      },
    );
  }

  Widget _senhatxt() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Senha",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _toggleVisibility = !_toggleVisibility;
            });
          },
          icon: _toggleVisibility
              ? Icon(Icons.visibility_off)
              : Icon(Icons.visibility),
        ),
      ),
      obscureText: _toggleVisibility,
      onSaved: (String password) {
        _senha = password;
      },
      validator: (String password) {
        String errorMessage;

        if (password.isEmpty) {
          errorMessage = "O campo senha é requerido";
        }
        return errorMessage;
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.grey.shade100,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image:AssetImage("assets/imagens/cadastro.png"),
                  height:120.0,
                  width:120.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Card(
                  elevation: 5.0,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: <Widget>[
                        _nometxt(),
                        SizedBox(
                          height: 20.0,
                        ),
                        _emailtxt(),
                        SizedBox(
                          height: 20.0,
                        ),
                        _senhatxt(),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),

                Button(btnText: "Cadastrar"),

                Divider(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Já possui Cadastro?",
                      style: TextStyle(
                          color: Color(0xFFBDC2CB),
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    ),
                    SizedBox(width: 10.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => LoginPage()));
                      },
                      child: Text(
                        "Logar",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }



  void onSubmit(Function authenticate) {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();

      print("Seu Email: $_email, sua senha: $_senha");
      authenticate(_email, _senha);
    }
  }
}