//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:proyecto_dam/generated/l10n.dart';

class Login extends StatelessWidget{
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( 
        backgroundColor: const Color(0xffffffff),
        body: SingleChildScrollView(       
           child: Column( 
              children: const <Widget>[
                Cabecera(),
                CodigoUsuarioio(),
                Boton(),
              ],
            ),
        ),
      ),
    );
  }
}
/*.................

Cabecera

''''''''''''''''''*/
class Cabecera  extends StatelessWidget {
  const Cabecera ({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50, left: 50, right: 50),
      child: const Image(image: AssetImage('assets/CanariasLuxury.png')),
    );
  }
}
/*.................

CodigoCodigoUsuarioioio

''''''''''''''''''*/
class CodigoUsuarioio extends StatelessWidget {
  const CodigoUsuarioio({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50, left: 50, right: 50),
      child:  TextField(        
        style: const TextStyle(
          fontFamily: 'MulishM',
        ),
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: S.current.codigoUsuario,
        ),
      ),
    );
  }
}
/*.................

Boton

''''''''''''''''''*/
class Boton extends StatelessWidget {
  const Boton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 50, left: 50, right: 50),                
      child: ElevatedButton(
        style:  ElevatedButton.styleFrom(   
          padding: const EdgeInsets.symmetric(horizontal: 50),            
            textStyle: const TextStyle(
              fontSize: 18,
              fontFamily: "MulishM",
            ),
            foregroundColor: const Color(0xffffffff),
            backgroundColor: const Color(0xffac862e),
                               
        ),                 
        child:  Text(S.current.entrar),
        onPressed: () {

        }
      )
    );
  }
}


  