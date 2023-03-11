import 'package:flutter/material.dart';

import 'package:proyecto_dam/generated/l10n.dart';
import 'package:proyecto_dam/screens/menu.dart';

class Cuestionario extends StatelessWidget {

  const Cuestionario({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Texto(texto: S.current.cuestionario,tamano: 18),
              CampoTexto(texto: S.current.nombreUsuario),
              CampoTexto(texto: S.current.numeropasaporte),
              //Texto(texto: S.current.textCorreoElec, tamano: 13),
              //CampoTextoCorreo(texto: S.current.correoElec),
              BotonGuardar(texto: S.current.guardar)
            ],
          ),
        ),
       ),
    );
  }
}
/*.................

Texto

''''''''''''''''''*/
class Texto extends StatelessWidget {

  final String texto;
  final double tamano;

  const Texto({
    Key? key, 
    required this.texto, 
    required this.tamano,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top:30,left: 50,right: 50),
      child: Text(
        texto,
        style: TextStyle(
         color: const Color.fromARGB(255, 109, 109, 109), 
         fontSize: tamano,         
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
/*.................

Campo texto

''''''''''''''''''*/
class CampoTexto extends StatelessWidget {

  final String texto;

  const CampoTexto({
    Key? key, 
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 50, right: 50),
      child:  TextField(        
        style: const TextStyle(
          fontFamily: 'MulishM',
        ),
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: texto,
        ),
      ),
    );
  }
}
/*.................

Campo texto correo

''''''''''''''''''*/
/*class CampoTextoCorreo extends StatelessWidget {

  final String texto;

  const CampoTextoCorreo({
    Key? key, 
    required this.texto,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child:  TextField(        
        style: const TextStyle(
          fontFamily: 'MulishM',
        ),
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: texto,
        ),
      ),
    );
  }
}*/
/*.................

Boton Guardar

''''''''''''''''''*/
class BotonGuardar extends StatelessWidget {

  final String texto;

  const BotonGuardar({
    Key? key, 
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 50, left: 50, right: 50),                
      child: ElevatedButton(
        style:  ElevatedButton.styleFrom(   
          padding: const EdgeInsets.symmetric(horizontal: 50),),                 
        child:  Text(texto),
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/menu');
        }
      )
    );
  }
}