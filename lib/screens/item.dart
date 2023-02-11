import 'package:flutter/material.dart';
import 'package:proyecto_dam/model/model_carrusel.dart';


class Item extends StatelessWidget {

  final Carrusel carruselImages;

  const Item({Key? key, 

  required this.carruselImages
  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          foregroundColor: const Color.fromARGB(255, 109, 109, 109),
          title: Text(
            carruselImages.name,            
            style: TextStyle(
              color: const Color.fromARGB(255, 109, 109, 109),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: FadeInImage(
                    placeholder: AssetImage("assets/loading.gif"),
                    image: AssetImage(carruselImages.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 18),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Texto(
                      texto: carruselImages.description, 
                      tamano: 13
                    ),
                    SizedBox(height: 18,),
                    Boton(texto: "pedir")
                  ]
                ),
              )
            ]
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
      margin: const EdgeInsets.symmetric(horizontal: 21),
      child: Text(
        texto,
        style: TextStyle(
         fontFamily: 'MulishM',
         color: const Color.fromARGB(255, 109, 109, 109), 
         fontSize: tamano,         
        ),
        textAlign: TextAlign.justify,
      ),      
    );
  }
}
/*.................

Boton

''''''''''''''''''*/
class Boton extends StatelessWidget {

  final String texto;

  const Boton({
    Key? key, 
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 18, left: 50, right: 50),             
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
        child:  Text(texto),
        onPressed: () {

        }
      )
    );
  }
}