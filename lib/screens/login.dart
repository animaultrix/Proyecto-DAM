import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      //resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff8d886f),
      body: SingleChildScrollView(       
         child: Column(
            children: const <Widget>[
              Foto(),
              CorreoElectronico(),
              Contrasena(),
              Boton(),
            ],
          ),
      ),
    );
  }
}
/*.................

Foto

''''''''''''''''''*/
class Foto extends StatelessWidget {
  const Foto({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50, left: 8, right: 8),
      child: const Image(image: AssetImage('assets/CanariasLuxury2Sombra.png')),
    );
  }
}
/*.................

CorreoElectronico

''''''''''''''''''*/
class CorreoElectronico extends StatelessWidget {
  const CorreoElectronico({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50, left: 50, right: 50),
      child: const TextField(
        decoration: InputDecoration(
          hintText: "Correo electrónico",
        ),
      ),
    );
  }
}
/*.................

contrasena

''''''''''''''''''*/
class Contrasena extends StatelessWidget {
  const Contrasena({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 50, right: 50),
      child: const TextField(
        decoration: InputDecoration(
          hintText: "Contraseña",
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
            color: Color.fromARGB(255, 15, 14, 5)),
            foregroundColor: const Color(0xfffae15b),
            backgroundColor: const Color(0xff212121),
                                
        ),                 
        child: const Text('Entrar'),
        onPressed: () {

        }
      )
    );
  }
}


  