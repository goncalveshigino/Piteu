import 'package:cumidas/src/login/components/botao.dart';
import 'package:cumidas/src/login/login_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _toggleVisibility = true;

  String _name = '';
  String _email = '';
  String _password = '';

  Widget _nameText() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Name",
          hintStyle: TextStyle(color: Color(0xFFBDC2CB), fontSize: 18.0)
          ),
          onSaved: (String username){
            _name = username.trim();
          },
          validator: (String username){
            String errorMessage;
            if(username.isEmpty){
              errorMessage = " O nome e requerido";
            }

            return errorMessage;
          },
    );
  }

  Widget _emailText() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Digite seu E-mail",
          hintStyle: TextStyle(color: Color(0xFFBDC2CB), fontSize: 18.0)
          ),
           onSaved: (String email){
            _email = email;
          },
          validator: (String email){
            String errorMessage;
            if(!email.contains("@")){
                errorMessage = "Seu email esta incorreto";
            }
            if(email.isEmpty){
              errorMessage = "O Campo email e requerido";
            }

            return errorMessage;
          },
    );
  }

  Widget _passwordText() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "senha",
        hintStyle: TextStyle(color: Color(0xFFBDC2CB), fontSize: 18.0),
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _toggleVisibility = !_toggleVisibility;
              });
            },
            icon: _toggleVisibility
                ? Icon(Icons.visibility_off)
                : Icon(Icons.visibility)),
      ),
      obscureText: _toggleVisibility,
      onSaved: (String password) {
        _password = password;
      },
      validator: (String password) {
        String errorMessage;

        if (password.isEmpty) {
          errorMessage = "O Campo senha e obrigatorio";
        }
        return errorMessage;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.grey.shade100,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Form(
            //key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image:AssetImage("assets/images/cadastro.png"),
                  height: 120.0,
                  width: 120.0,
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
                        _nameText(),
                        SizedBox(
                          height: 20.0,
                        ),
                        _emailText(),
                        SizedBox(
                          height: 20.0,
                        ),
                        _passwordText()
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),

                Button(btnText: "Cadastrar",),

                 Divider(
                   height: 20.0,
                 ),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Text(
                       "Ja possui Cadastro?",
                       style: TextStyle(
                         color: Color(0xFFBDC2CB),
                         fontWeight: FontWeight.bold,
                         fontSize: 16.0  
                       ),
                     ),
                     SizedBox( width: 10.0,),
                     GestureDetector(
                       onTap: (){
                         Navigator.of(context).pushReplacement(MaterialPageRoute(
                           builder: (BuildContext context) => LoginPage())
                           );
                       },
                       child: const Text(
                         "Logar",
                         style: TextStyle(
                           color:Colors.blueAccent,
                           fontWeight: FontWeight.bold,
                           fontSize: 16.0
                         ),
                       ),
                     )
                   ],
                 )
              ],
            ),
          ),
        ),
      )
    );
  }
}
