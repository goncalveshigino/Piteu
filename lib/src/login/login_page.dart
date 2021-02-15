import 'package:cumidas/src/login/components/botao.dart';
import 'package:cumidas/src/register/register_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   bool _toggleVisibility = true; 


  Widget _emailText(){
    return  TextFormField(
      decoration:  InputDecoration(
        hintText: "Digite seu E-mail",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0
        )
      ),
    );
  }


  Widget _passwordText(){
    return  TextFormField(
      decoration:  InputDecoration(
        hintText: "Digite sua senha",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0
        ),
        suffixIcon: IconButton(
          onPressed: (){
            setState(() {
              _toggleVisibility =! _toggleVisibility;
            });
          },
            icon: _toggleVisibility
            ? Icon(Icons.visibility_off)
            : Icon(Icons.visibility)
        ),
      ),
      obscureText: _toggleVisibility,
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        
            SizedBox(
              height: 50.0,

            ),

              Card(
                elevation: 5.0,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      _emailText(),
                       SizedBox(
                         height: 20.0,
                       ),
                       _passwordText(),
                       SizedBox(
                         height: 20.0,
                       )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),

            Button(btnText: "Logar",),
            Divider(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Nao possui Cadastro?",
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
                      builder: (BuildContext context) => RegisterPage()
                    ));
                  },

                  child: Text(
                    "cadastre-se",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize:15.0
                    )
                  )
                )
              ],
            ), 

            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Recuperar Senha?",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.redAccent,
                    fontWeight: FontWeight.w400
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
   }
  }
