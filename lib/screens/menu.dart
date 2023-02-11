import 'package:flutter/material.dart';
import 'package:proyecto_dam/data/data_item.dart';

import 'package:proyecto_dam/generated/l10n.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:proyecto_dam/model/model_carrusel.dart';
import 'package:proyecto_dam/screens/item.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(
          children:  [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:  <Widget>[                
                Icon(
                  Icons.account_circle_outlined,
                  color: Color(0xffac862e), 
                  size: 36.0,
                ),
                Container( margin: EdgeInsets.only(top: 48, right: 8),)
              ],
            ),
            Expanded(child: Container()),
            CarouselSlider.builder(
              itemCount: carruselImages.length, 
              itemBuilder: (contex, index, realIndex) {
                final carruselImage = carruselImages[index];
                return CardImages(carruselImages: carruselImages[index],);
              },
              options: CarouselOptions(
                height: 150,
                autoPlay: true,
                autoPlayCurve: Curves.easeInOut,
                enlargeCenterPage: true,
                autoPlayInterval: Duration(seconds: 8),
                scrollDirection: Axis.horizontal,
                              
              ),
            ),
            Expanded(child: Container()),
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Boton(texto: S.current.miStancia),
                Boton(texto: S.current.tienda),
                Boton(texto: S.current.ocio),
                Boton(texto: S.current.puntoInteres),
                Container(height: 32,)
              ],
            )
          ],
        )
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
      margin: const EdgeInsets.only(bottom: 13, left: 50, right: 50),             
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
/*.................

CardImages

''''''''''''''''''*/
class CardImages extends StatelessWidget {  

  final Carrusel carruselImages;

  const CardImages({
    Key? key,

    required this.carruselImages, 

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: InkWell(
          onTap: (){
            carruselImages.copy();
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => Item(carruselImages:  carruselImages)
              )
            );
          },
          child: FadeInImage(
            placeholder: AssetImage("assets/loading.gif"),
            image: AssetImage(carruselImages.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
